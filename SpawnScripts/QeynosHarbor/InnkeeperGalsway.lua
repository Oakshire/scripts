--[[
	Script Name	: SpawnScripts/QeynosHarbor/InnkeeperGalsway.lua
	Script Purpose	: Innkeeper Galsway <General Goods>
	Script Author	: Dorbin
	Script Date	: 2022.05.24
	Script Notes	:
--]]

local message = 5546
local fishy = 5564

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
    ProvidesQuest(NPC,fishy)
end

require "SpawnScripts/Generic/DialogModule"

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
 if GetFactionAmount(Spawn,11) <0 then
    choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
        end
    else
    Dialog1(NPC, Spawn)
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"","","hello",0,0,Spawn)
    Dialog.AddDialog("What is it you need, traveler? If it's reasonable rates, fine food and ale you desire, you've come to the right inn.")
	Dialog.AddVoiceover("voiceover/english/innkeeper_galsway/qey_harbor/qst_innkeepergalsway.mp3", 4253649718, 828678171)
    if GetQuestStep(Spawn,message) ==1 then
	Dialog.AddOption("Dawson Magnificent wanted to let you know that he and his troupe will be late this evening.", "MessageDelivered")
	end
    if GetQuestStep(Spawn,fishy) ==5 then
	Dialog.AddOption("I asked the fish mongers around the market for their best price.  Only Umli was willing to wiggle some on the price as long as word doesn't get out on his deal.", "FishDelivered")
	end
	if not HasQuest(Spawn,fishy) and not HasCompletedQuest(Spawn, fishy) then
	Dialog.AddOption("I am actually looking around for work.  Have anything I can do to help?", "Dialog3")
	end
	Dialog.AddOption("Great.  I plan to enjoy myself.")
	Dialog.Start()
end


function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Looking for work, eh?  Well, alright.  Let's see what you can do.  Go to the fisherman's market and find me the best price on three baskets of fresh fish.  Here, let me write down the merchant's names for you.  Let's just call this a test of your abiities!")
	Dialog.AddVoiceover("voiceover/english/innkeeper_galsway/qey_harbor/qst_innkeepergalsway000.mp3", 2510257560, 588326201)
	Dialog.AddOption("Alright.  I'll ask around the harbor market for you.", "QuestStart")
	Dialog.AddOption("Not sure what I expected coming from a place called 'Fish's Alehouse and Inn', but I'm not interested in this sorty of fishy business.")
	Dialog.Start()
end

function QuestStart(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,fishy)
    end

function FishDelivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"","","smile",0,0,Spawn)
    Dialog.AddDialog("Well done!  That's the kind of entrepreneurial spirit and clever deal making that rebuilt this city.  I'll have proper work with proper pay sometime in the future.  For now, you have my gratitude.")
	Dialog.AddVoiceover("voiceover/english/innkeeper_galsway/qey_harbor/qst_innkeepergalsway002.mp3", 2911692262, 1585415232)
	Dialog.AddOption("Glad to have been of assistance.", "FishyFinished")
	Dialog.Start()
end

function FishyFinished(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,fishy, 5)
    end
    
function MessageDelivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"","","sigh",0,0,Spawn)
    Dialog.AddDialog("Well, that is a shame.  The patrons will be disappointed.  I'll have to dock his wages, but at least the crowd can keep drinking until the troupe arives!  Let Dawson know I'm anxiously awaiting his arrival.")
	Dialog.AddVoiceover("voiceover/english/dawson_magnificent/qey_north/quests/dawsonmagnificent/galsway_dawson_x1_initial.mp3", 1399252863, 3888111882)
	Dialog.AddOption("I'll be sure to let him know. ","MessageFinished")
	Dialog.Start()
end

function MessageFinished(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,message, 1)
    end
