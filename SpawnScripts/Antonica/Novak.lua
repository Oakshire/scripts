--[[
	Script Name	: SpawnScripts/Antonica/Novak.lua
	Script Purpose	: Novak <General Goods>
	Script Author	: geordie0511
	Script Date	: 2019.03.13
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local Achoo = 464
local DeliveriesForFlores = 5333 -- Deliveries For Flores Quest

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end



function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
			PlayFlavor(NPC, "voiceover/english/merchant_novak/antonica/merchantnovak000.mp3", "", "", 4148197515, 1288700917, Spawn)
	if GetQuestStep(Spawn, Achoo) == 1 then
	    AddConversationOption(conversation, "Matsy sent me for some pepper.", "pepper")
	elseif GetQuestStep(Spawn, DeliveriesForFlores) == 1 then
		AddConversationOption(conversation, "I'm here to deliver this crate of supplies from Flores.", "Option1")
		end
		AddConversationOption(conversation, "Not right now.")
		StartConversation(conversation, NPC, Spawn, "Greetings, perhaps you need to replenish your supplies, or maybe just sell some of what you picked up along the trail?")
	end


function Option1(NPC, Spawn)
    SetStepComplete(Spawn, DeliveriesForFlores, 1)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/merchant_novak/antonica/merchantnovak001.mp3", "", "thanks", 1938438342, 930282390, Spawn)
	AddConversationOption(conversation, "Thanks. I'll make sure he gets it.")
	StartConversation(conversation, NPC, Spawn, "Great, I was almost out of supplies as it stands. I would hate to hike all the way back to Flores. Here's a pouch for Flores. Make sure he gets this, okay?")
end

function pepper(NPC, Spawn)
    		SetStepComplete(Spawn, Achoo, 1)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		AddConversationOption(conversation, "Ok, thanks very much.")
		StartConversation(conversation, NPC, Spawn, "Oh, here you go! I will put it on her bill.")
end