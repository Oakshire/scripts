--[[
	Script Name	: SpawnScripts/GreaterFaydark/PirgettaMaarit.lua
	Script Purpose	: Pirgetta Maarit <Work Orders>
	Script Author	: John Adams
	Script Date	: 2009.03.01
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll work towards that end then.", "dlg_80_1")
	StartConversation(conversation, NPC, Spawn, "I'm sorry, until you have chosen a specialty in your craft I do not have any work orders for you.  Come see me when you're more practiced in your trade.")
	if convo==81 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll work towards that end then.", "dlg_81_1")
		StartConversation(conversation, NPC, Spawn, "I'm sorry, until you have chosen a specialty in your craft I do not have any work orders for you.  Come see me when you're more practiced in your trade.")
	end

end

