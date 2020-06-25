--[[
	Script Name	: SpawnScripts/Longshadow/LynsiaTKanix.lua
	Script Purpose	: Lynsia T'Kanix <Provisioner>
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/lynsia_t_kanix/fprt_hood05/lynsiatkanix000.mp3", "", "", 2924549472, 3132470359, Spawn)
	AddConversationOption(conversation, "I am just taking a look around.  ", "dlg_3_1")
	StartConversation(conversation, NPC, Spawn, "The wine I serve tastes like the wines of Neriak. Ah ... how I miss drinking the fine wine of my homeland. Now, what do you want, peasant?")
end