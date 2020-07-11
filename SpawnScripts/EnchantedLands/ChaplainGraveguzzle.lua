--[[
	Script Name	: SpawnScripts/EnchantedLands/ChaplainGraveguzzle.lua
	Script Purpose	: Chaplain Graveguzzle 
	Script Author	: Cynnar
	Script Date	: 2015.02.24
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

		PlayFlavor(NPC, "chaplain_graveguzzle/enchanted/chaplain_graveguzzle008.mp3", "", "", 3041650687, 2123920804, Spawn)
		AddConversationOption(conversation, "Praise Brell.", "dlg_5_1")
	StartConversation(conversation, NPC, Spawn, "Brell, smite these fiends from our lands. We shall send them from here and cast them back into the emptiness of their own world. ")
	if convo==68 then
		PlayFlavor(NPC, "chaplain_graveguzzle/enchanted/chaplain_graveguzzle008.mp3", "", "", 3041650687, 2123920804, Spawn)
		AddConversationOption(conversation, "Praise Brell.", "dlg_68_1")
		StartConversation(conversation, NPC, Spawn, "Brell, smite these fiends from our lands. We shall send them from here and cast them back into the emptiness of their own world. ")
	end

end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "chaplain_graveguzzle/enchanted/chaplain_graveguzzle008.mp3", "", "", 3041650687, 2123920804, Spawn)
		AddConversationOption(conversation, "Praise Brell.", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Brell, smite these fiends from our lands. We shall send them from here and cast them back into the emptiness of their own world. ")
end

