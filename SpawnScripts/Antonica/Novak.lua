--[[
	Script Name	: SpawnScripts/Antonica/Novak.lua
	Script Purpose	: Novak <General Goods>
	Script Author	: geordie0511, Dorbin
	Script Date	: 2019.03.13
	Script Notes	: Auto-Generated Conversation from PacketParser Data - Restructured using dialog mod - 05/11/2023
--]]
require "SpawnScripts/Generic/DialogModule"

local Achoo = 464
local DeliveriesForFlores = 5333 -- Deliveries For Flores Quest

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 13, "InRange", "LeaveRange")		
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
elseif MakeRandomInt(0,100) <=50 then
     PlayFlavor(NPC, "", "", "beckon", 0, 0, Spawn)
	    FaceTarget(NPC, Spawn)
end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings, perhaps you need to replenish your supplies, or maybe just sell some of what you picked up along the trail?")
	Dialog.AddVoiceover("voiceover/english/merchant_novak/antonica/merchantnovak000.mp3", 4148197515, 1288700917)
     PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
	if GetQuestStep(Spawn, Achoo) == 1 then
 	Dialog.AddOption("Matsy sent me for some pepper.", "pepper")
    end
	if GetQuestStep(Spawn, DeliveriesForFlores) == 1 then
	Dialog.AddOption("I'm here to deliver this crate of supplies from Flores.", "Option1")
    end
	Dialog.AddOption("Not right now.")
	Dialog.Start()
end


function Option1(NPC, Spawn)
    SetStepComplete(Spawn, DeliveriesForFlores, 1)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Great, I was almost out of supplies as it stands. I would hate to hike all the way back to Flores. Here's a pouch for Flores. Make sure he gets this, okay?")
	Dialog.AddVoiceover("voiceover/english/merchant_novak/antonica/merchantnovak001.mp3", 1938438342, 930282390)
     PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
	Dialog.AddOption("Thanks. I'll make sure he gets it.")
	Dialog.Start()
end

function pepper(NPC, Spawn)
    		SetStepComplete(Spawn, Achoo, 1)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		AddConversationOption(conversation, "Ok, thanks very much.")
		StartConversation(conversation, NPC, Spawn, "Oh, here you go! I will put it on her bill.")
end