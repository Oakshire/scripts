--[[
	Script Name		:	SpawnScripts/FrostfangSea/RyGorrExplosiveMiningBarrel.lua
	Script Purpose	:	to make the mining barrel die and create an explosion/hide the rock widget
	Script Author	:	theFoof
	Script Date		:	2013.6.12
	Script Notes	:	
--]]

function spawn(NPC)
	AddTimer(NPC, 500, "destroy_barrel")
	AddSpawnAccess(NPC, NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function destroy_barrel(NPC)
	player = GetTempVariable(NPC, "player")
	KillSpawn(NPC, player, 0)
	anim = SpawnByLocationID(GetZone(player), 441170)
	AddSpawnAccess(anim, player)
	SetTempVariable(anim, "player", player)
	SetTempVariable(NPC, "player", nil)
end