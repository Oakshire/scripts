--[[
	Script Name	: SpawnScripts/QeynosHarbor/SquireMoorford.lua
	Script Purpose	: Squire Moorford <Qeynos Guard>
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

		PlayFlavor(NPC, "voiceover/english/squire_moorford/qey_harbor/privatemoorford000.mp3", "", "", 3116776153, 2836450585, Spawn)
		AddConversationOption(conversation, "Keep up the good work!", "dlg_1_1")
	StartConversation(conversation, NPC, Spawn, "Hello!  How can I help you? It's my proud duty to help keep this harbor safe!")
	if convo==12 then
		PlayFlavor(NPC, "voiceover/english/squire_moorford/qey_harbor/privatemoorford000.mp3", "", "", 3116776153, 2836450585, Spawn)
		AddConversationOption(conversation, "Keep up the good work!", "dlg_12_1")
		StartConversation(conversation, NPC, Spawn, "Hello!  How can I help you? It's my proud duty to help keep this harbor safe!")
	end

end

