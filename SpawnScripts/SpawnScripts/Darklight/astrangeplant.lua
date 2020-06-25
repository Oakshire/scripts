--[[
	Script Name	: SpawnScripts/Darklight/astrangeplant.lua
	Script Purpose	: Quest Giver
	Script Author	: fearfx
	Script Date	: 19/01/2017
	Script Notes	: <special-instructions>
--]]

local AStrangeFind = 187

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 10, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function SpawnAccess(NPC, Spawn)
	if not HasQuest(Spawn, AStrangeFind) and not HasItem(Spawn, 13423) then
		AddSpawnAccess(NPC, Spawn)
	else
		RemoveSpawnAccess(NPC, Spawn)
	end
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == "Gathering" and not HasItem(Player, 13423) then
		SummonItem(Spawn, 13423)
		RemoveSpawnAccess(NPC, Spawn)
	end
end