--[[
	Script Name	: SpawnScripts/ElddarGrove/InitiateLunaru.lua
	Script Purpose	: Initiate Lunaru 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Sorry, I can't speak now.  I must prepare for my sparring exercises.", "", 1689589577, 4560189, Spawn)
end

