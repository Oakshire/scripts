--[[
	Script Name	: SpawnScripts/SouthQeynos/TibbyCopperpot.lua
	Script Purpose	: Tibby Copperpot <Baker>
	Script Author	: Dorbin
	Script Date	: 2022.06.02
	Script Notes	: Quest dialog is completely frabricated
--]]
local Cake = 5580
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
    ProvidesQuest(NPC,Cake)
end


function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
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
	PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1005.mp3", 0, 0, Spawn)
	Dialog.AddDialog("I sure do love to cook.  Yummy baked goods and cakes.  I make my sister do all the selling.  To tell you the truth I think she likes it.")
    if not HasQuest(Spawn,Cake) and not HasCompletedQuest(Spawn,Cake) then
	Dialog.AddOption("You must be pretty busy then.  Anything I can help with?", "Dialog2")
    end
    if GetQuestStep(Spawn,Cake)==2 then
	Dialog.AddOption("Harold was quite pleased the variety of baked goods you has me deliver.", "Dialog3")
    end
    Dialog.AddOption("Smells great.  Don't let me interrupt!")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh yes.  I have all these deliveries to make but also all this baking to do.  Our lovely Tara use to come over and do all the deliveries, but she recently became an initiate with the Silent Fist.  She just isn't around anymore and we haven't found anyone else to help.  Would you have the time to make a delivery for me?")
    PlayFlavor(NPC,"","","agree",0,0,Spawn)
    if HasQuest(Spawn,5527) or HasCompletedQuest(Spawn,5527) then --Extra fluff if player met Tara in Elddar Grove
	Dialog.AddOption("I've actually met Tara.  She seemed a bit homesick, but steadfast in her training.  I would gladly help in her stead.","Job")
	end
	Dialog.AddOption("I would be happy to.","Job")
	Dialog.AddOption("Another time, perhaps.")
	Dialog.Start()
end

function Job(NPC,Spawn)
    FaceTarget(NPC,Spawn)
    OfferQuest(NPC,  Spawn,Cake)
end


function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Lovely! Hopefully we can come to an agreement with Irontoes East for more in the future.  You've saved me the time I needed here in the kitchen.  Please, take these brews and baked breads as our thanks.  Good day to you!")
    PlayFlavor(NPC,"","","happy",0,0,Spawn)
	Dialog.AddOption("Glad I could help.","JobDone")
	Dialog.Start()
end

function JobDone(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,Cake, 2)
    end
    
    
function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1005.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1005.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1005.mp3", 0, 0, Spawn)
	end
end