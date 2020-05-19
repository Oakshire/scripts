--[[
	Script Name		:	SpawnScripts/FrostfangSea/qst_veliumdelver_x5_wall_expolsion.lua 
	Script Purpose	:	the exploding animation for the ry'gorr exploding barrel as well as hiding the boulder
	Script Author	:	theFoof
	Script Date		:	2013.6.12
	Script Notes	:	
--]]

local RyGorrOperations = 60

function spawn(NPC)
	AddTimer(NPC, 2600, "explosion")
end

function respawn(NPC)
	spawn(NPC)
end

function explosion(NPC)
	local player = GetTempVariable(NPC, "player")
	local wall = GetSpawnByLocationID(GetZone(NPC), 441164)
	local wallrock = GetSpawnByLocationID(GetZone(NPC), 572711)
	SpawnSet(NPC, "visual_state", "1491")
	RemoveSpawnAccess(wall, player)
	RemoveSpawnAccess(wallrock, player)
	AddTimer(NPC, 500, "kill_explosion")
	SetStepComplete(player, RyGorrOperations, 1)
	SetTempVariable(NPC, "player", nil)
end

function kill_explosion(NPC)
	SpawnSet(NPC, "visual_state", "0")
	AddTimer(NPC, 4000, "Despawn")
end