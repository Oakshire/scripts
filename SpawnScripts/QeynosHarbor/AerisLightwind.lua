--[[
	Script Name	: SpawnScripts/QeynosHarbor/AerisLightwind.lua
	Script Purpose	: Aeris Lightwind <Provisioner>
	Script Author	: Dorbin
	Script Date	: 2022.05.25
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"
local fishy = 5564

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
   if GetFactionAmount(Spawn,11) <0 then
    choice = math.random(1,2)
	FaceTarget(NPC, Spawn)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
        end
    else
    if math.random(1,100)<60 then
    choice = math.random(1,2)
	FaceTarget(NPC, Spawn)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "wave", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "hello", 1584866727, 581589457, Spawn)
        end
        end
    end
end

function LeaveRange(NPC, Spawn)
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
	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
	Dialog.AddDialog("Look around? Freshest catch on the docks.")
	Dialog.AddVoiceover("voiceover/english/merchant_aeris_lightwind/qey_harbor/aerislightwind000.mp3", 2050407066, 4101070387)
    if not QuestStepIsComplete(Spawn,fishy,2) and HasQuest(Spawn,fishy) then
	Dialog.AddOption("Galsway looking for the best price for fish on the market.  Might you have a deal for him?","FishQuestion")
    end
	Dialog.AddOption("Not right now, thanks.")
	Dialog.Start()
end

function FishQuestion(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/merchant_umli_grayfist/qey_harbor/umligrayfist001.mp3", "", "ponder", 4032126743, 224777324, Spawn)
		AddConversationOption(conversation, "Fair enough.  I'll let him know about your offer.  Thanks!", "ThankYou")
	StartConversation(conversation, NPC, Spawn, "My best price, eh?  So the old grubber is shopping for a deal.  Hmm, he does run a big place...  and I really need to sell this stock!  Okay, you tell Galsway I'll give him a five percent break-  but the deal's off if he tells anyone how generous I am!")
end

function FishQuestion(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "scold", 0, 0, Spawn)
	Dialog.AddDialog("I sell the ocean's finest, and at reasonable prices I might add!  If Galsway wants cheaper fish then he should try another merchant.")
	Dialog.AddVoiceover("voiceover/english/merchant_aeris_lightwind/qey_harbor/aerislightwind001.mp3", 2174225040, 2177070403)
	Dialog.AddOption("Alright then!  I'll just ... be going.","FishDone")
	Dialog.AddOption("Noted.  I'll be sure he knows.","FishDone")
	Dialog.Start()
end

function FishDone(NPC,Spawn)
    PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,fishy, 2)
end 
