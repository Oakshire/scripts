--[[
	Script Name	: SpawnScripts/Graystone/HarganIcethaw.lua
	Script Purpose	: Hargan Icethaw 
	Script Author	: John Adams
	Script Date	: 2008.09.21
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
     SpawnSet(NPC, "visual_state", 0)
     AddTimer(NPC,33000,"resetVisual")
	PlayFlavor(NPC, "voiceover/english/hargan_icethaw/qey_village03/harganicethaw000.mp3", "", "", 3849445120, 4083065151, Spawn)
	AddConversationOption(conversation, "No, I think it's just you.  I'll let you get back to what you're doing.")
	StartConversation(conversation, NPC, Spawn, "Ahhhh ... Nothing's more rewarding than building up a good, hearty sweat after a long day's work!")
end

function resetVisual(NPC)
SpawnSet(NPC, "visual_state", 11420)
end