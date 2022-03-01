--[[
	Script Name		:	SpawnScripts/asprintingRyGorrgatecaller.lua
	Script Purpose	:	for the sprinting gatecallers near the Great Shelf
	Script Author	:	theFoof
	Script Date		:	2013.6.2
	Script Notes	:	
--]]

function spawn(NPC)
	local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
	MovementLoopAddLocation(NPC, X, Y, Z, 5, math.random(0,3))
	MovementLoopAddLocation(NPC, 665.67 + math.random(-7,7), 21.28, -250.8 + math.random(-7,7), 5, 0)
	MovementLoopAddLocation(NPC, 648.25 + math.random(-7,7), 25.98, -272.83 + math.random(-7,7), 5, 0)
	MovementLoopAddLocation(NPC, 638.87 + math.random(-7,7), 33.15, -301.59 + math.random(-7,7), 5, 0, "death_timer")
	MovementLoopAddLocation(NPC, 644.30 + math.random(-7,7), 52.16, -344.42 + math.random(-7,7), 5, 0)
	MovementLoopAddLocation(NPC, 661.05 + math.random(-7,7), 74.74, -399.58 + math.random(-7,7), 5, 0)
	MovementLoopAddLocation(NPC, 668.04 + math.random(-7,7), 85.46, -435.57 + math.random(-7,7), 5, 0)
	
end

function hailed(NPC, Spawn)
	FacetTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function death_timer(NPC)
	AddTimer(NPC, math.random(2000, 23000), "die") -- sets the delay before death after NPC hits the ramp
end

function die(NPC) -- this makes the closest "a vigilant gauntlet defender" kill the NPC
	KillSpawn(NPC, GetSpawn(NPC, 4700076), 1)
end