--[[
	Script Name	: SpawnScripts/QeynosHarbor/AlissaCleeway.lua
	Script Purpose	: Alissa Cleeway <General Goods>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
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

		PlayFlavor(NPC, "voiceover/english/merchant_alissa_cleeway/qey_harbor/alissacleeway000.mp3", "", "", 3954670515, 1312504794, Spawn)
		AddConversationOption(conversation, "I don't need your goods.", "dlg_7_1")
	StartConversation(conversation, NPC, Spawn, "Browse the docks all you want, I guarantee you won't find better fish than mine.")
	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/merchant_alissa_cleeway/qey_harbor/alissacleeway000.mp3", "", "", 3954670515, 1312504794, Spawn)
		AddConversationOption(conversation, "I don't need your goods.", "dlg_9_1")
		StartConversation(conversation, NPC, Spawn, "Browse the docks all you want, I guarantee you won't find better fish than mine.")
	end

	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/merchant_alissa_cleeway/qey_harbor/alissacleeway000.mp3", "", "", 3954670515, 1312504794, Spawn)
		AddConversationOption(conversation, "I don't need your goods.", "dlg_10_1")
		StartConversation(conversation, NPC, Spawn, "Browse the docks all you want, I guarantee you won't find better fish than mine.")
	end

	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/merchant_alissa_cleeway/qey_harbor/alissacleeway000.mp3", "", "", 3954670515, 1312504794, Spawn)
		AddConversationOption(conversation, "I don't need your goods.", "dlg_11_1")
		StartConversation(conversation, NPC, Spawn, "Browse the docks all you want, I guarantee you won't find better fish than mine.")
	end

end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/merchant_alissa_cleeway/qey_harbor/alissacleeway000.mp3", "", "", 3954670515, 1312504794, Spawn)
		AddConversationOption(conversation, "I don't need your goods.", "dlg_11_2")
	StartConversation(conversation, NPC, Spawn, "Browse the docks all you want, I guarantee you won't find better fish than mine.")
end

