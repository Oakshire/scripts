--[[
	Script Name		:	SpawnScripts/FrostfangSea/aRyGorrinvader3.lua
	Script Purpose	:	Ry'Gorr invaders charging the beach
	Script Author	:	theFoof
	Script Date		:	2013.9.11
	Script Notes	:	
--]]

function spawn(NPC)
	SpawnSet(NPC, "attackable", "0")
	SpawnSet(NPC, "show_level", "0")
	SpawnSet(NPC, "show_command_icon", "0")
	SpawnSet(NPC, "visual_state", "0")
	SpawnSet(NPC, "action_state", "0")
	SpawnSet(NPC, "faction", "0")
	AddTimer(NPC, math.random(12000,16000), "DeathTimer")
	ChargeBeach(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function ChargeBeach(NPC)
	MovementLoopAddLocation(NPC, 263 + math.random(-10,10), 23.43, 224.5, 5, 0)
	MovementLoopAddLocation(NPC, 195.25, 32, 212.90 + math.random(-10,10), 5, 0)
end

function DeathTimer(NPC) -- the closest archer will kill this orc
	KillSpawn(NPC, GetSpawn(NPC, 4700114), 1)
end