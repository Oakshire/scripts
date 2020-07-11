--[[
	Script Name	: SpawnScripts/EnchantedLands/BellendisTempestcall.lua
	Script Purpose	: Bellendis Tempestcall 
	Script Author	: Cynnar
	Script Date	: 2015.02.17
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

		PlayFlavor(NPC, "voiceover/english/bellendis_tempestcall/enchanted/quests/bellendis_tempestcall001.mp3", "", "", 4041795000, 2514605241, Spawn)
		AddConversationOption(conversation, "I hear you.  I'm leaving.", "dlg_6_1")
	StartConversation(conversation, NPC, Spawn, "Stay back!  You're probably as corrupted as the others, and I'm not taking any chances. You hear me?")
	if convo==70 then
		PlayFlavor(NPC, "voiceover/english/bellendis_tempestcall/enchanted/quests/bellendis_tempestcall001.mp3", "", "", 4041795000, 2514605241, Spawn)
		AddConversationOption(conversation, "I hear you.  I'm leaving.", "dlg_70_1")
		StartConversation(conversation, NPC, Spawn, "Stay back!  You're probably as corrupted as the others, and I'm not taking any chances. You hear me?")
	end

end

