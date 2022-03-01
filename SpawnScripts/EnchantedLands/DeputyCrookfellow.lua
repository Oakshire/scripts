--[[
	Script Name	: SpawnScripts/EnchantedLands/DeputyCrookfellow.lua
	Script Purpose	: Deputy Crookfellow 
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

		PlayFlavor(NPC, "voiceover/english/deputy_crookfellow/enchanted/deputy_crookfellow000.mp3", "", "", 1701865806, 691567394, Spawn)
		AddConversationOption(conversation, "I'll keep that in mind.", "dlg_5_1")
	StartConversation(conversation, NPC, Spawn, "Things are not what they used to be in the thicket.  If you want to survive, I suggest you keep close to your friends.  The deputies of the Great Guard are too weary... too starved to do much of anything to aid you in these horrible times...")
	if convo==12 then
		PlayFlavor(NPC, "voiceover/english/deputy_crookfellow/enchanted/deputy_crookfellow000.mp3", "", "", 1701865806, 691567394, Spawn)
		AddConversationOption(conversation, "I'll keep that in mind.", "dlg_12_1")
		StartConversation(conversation, NPC, Spawn, "Things are not what they used to be in the thicket.  If you want to survive, I suggest you keep close to your friends.  The deputies of the Great Guard are too weary... too starved to do much of anything to aid you in these horrible times...")
	end

end

