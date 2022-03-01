--[[
	Script Name	: SpawnScripts/NorthQeynos/HaroldDunstan.lua
	Script Purpose	: Harold Dunstan <Bartender>
	Script Author	: Dorbin
	Script Date	: 2022.01.11
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

	local choice = math.random(1,0)

	if choice == 1 then
	else
	end

		PlayFlavor(NPC, "voiceover/english/harold_dunstan/qey_north/harolddunstan000.mp3", "", "", 2188633540, 0, Spawn)
		AddConversationOption(conversation, "I am not very thirsty right now. ", "dlg_3_1")
	StartConversation(conversation, NPC, Spawn, "Hail traveler.  Can I offer you a drink to quench your thirst?")
	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/harold_dunstan/qey_north/harolddunstan000.mp3", "", "", 1944438004, 3707588738, Spawn)
		AddConversationOption(conversation, "Let me see what you have for sale!")
		StartConversation(conversation, NPC, Spawn, "Hail traveler.  Can I offer you a drink to quench your thirst?")
	end

	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/harold_dunstan/qey_north/harolddunstan000.mp3", "", "", 1944438004, 3707588738, Spawn)
		AddConversationOption(conversation, "Let me see what you have for sale!")
		StartConversation(conversation, NPC, Spawn, "Hail traveler.  Can I offer you a drink to quench your thirst?")
	end

	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/harold_dunstan/qey_north/harolddunstan000.mp3", "", "", 1944438004, 3707588738, Spawn)
		AddConversationOption(conversation, "I am not very thirsty right now. ", "dlg_11_1")
		StartConversation(conversation, NPC, Spawn, "Hail traveler.  Can I offer you a drink to quench your thirst?")
	end

	if convo==36 then
		PlayFlavor(NPC, "voiceover/english/harold_dunstan/qey_north/harolddunstan000.mp3", "", "", 1944438004, 3707588738, Spawn)
		AddConversationOption(conversation, "I am not very thirsty right now. ", "dlg_36_1")
		StartConversation(conversation, NPC, Spawn, "Hail traveler.  Can I offer you a drink to quench your thirst?")
	end

end

