--[[
	Script Name	: SpawnScripts/SouthQeynos/TristanGalliway.lua
	Script Purpose	: Tristan Galliway 
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

		PlayFlavor(NPC, "voiceover/english/optional5/tristan_galliway/qey_south/tristangalliway000.mp3", "", "", 1051413050, 368824776, Spawn)
		AddConversationOption(conversation, "No, I just dropped in to relax a bit, if you don't mind. ", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "Do I know you?")
	if convo==1 then
		PlayFlavor(NPC, "voiceover/english/optional5/tristan_galliway/qey_south/tristangalliway000.mp3", "", "", 1051413050, 368824776, Spawn)
		AddConversationOption(conversation, "No, I just dropped in to relax a bit, if you don't mind. ", "dlg_1_1")
		StartConversation(conversation, NPC, Spawn, "Do I know you?")
	end

	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/optional5/tristan_galliway/qey_south/tristangalliway000.mp3", "", "", 1051413050, 368824776, Spawn)
		AddConversationOption(conversation, "No, I just dropped in to relax a bit, if you don't mind. ", "dlg_6_1")
		StartConversation(conversation, NPC, Spawn, "Do I know you?")
	end

end

