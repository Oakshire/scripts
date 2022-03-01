--[[
	Script Name	: SpawnScripts/OutpostOverlord/Kibbs.lua
	Script Purpose	: Kibbs <Spell Scrolls>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Upgrade your spells here!", "", 1689589577, 4560189, Spawn)
end

