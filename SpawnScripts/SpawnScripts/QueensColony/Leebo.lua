--[[
	Script Name	: SpawnScripts/QueensColony/Leebo.lua
	Script Purpose	: Leebo <Spell Scrolls>
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Upgrade your spells here!", "", 1689589577, 4560189, Spawn)
end