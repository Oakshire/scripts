--[[
	Script Name	: SpawnScripts/Antonica/Novak.lua
	Script Purpose	: Novak <General Goods>
	Script Author	: geordie0511
	Script Date	: 2019.03.13
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local Achoo = 464

function spawn(NPC)
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
	conversation = CreateConversation()
	if GetQuestStep(Spawn, Achoo) == 1 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Ok, thanks very much.")
		StartConversation(conversation, NPC, Spawn, "Oh, here you go! I will put it on her bill.")
		SetStepComplete(Spawn, Achoo, 1)
	else
		PlayFlavor(NPC, "voiceover/english/merchant_novak/antonica/merchantnovak000.mp3", "", "", 4148197515, 1288700917, Spawn)
		AddConversationOption(conversation, "Not right now.")
		StartConversation(conversation, NPC, Spawn, "Greetings, perhaps you need to replenish your supplies, or maybe just sell some of what you picked up along the trail?")
	end
end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/merchant_novak/antonica/merchantnovak001.mp3", "", "", 1938438342, 930282390, Spawn)
		AddConversationOption(conversation, "Thanks. I'll make sure he gets it.", "dlg_7_2")
	StartConversation(conversation, NPC, Spawn, "Great, I was almost out of supplies as it stands. I would hate to hike all the way back to Flores. Here's a pouch for Flores. Make sure he gets this, okay?")
end