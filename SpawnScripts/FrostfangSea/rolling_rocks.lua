--[[
	Script Name		:	SpawnScripts/FrostfangSea/rolling_rocks.lua
	Script Purpose	:	rolling rocks
	Script Author	:	theFoof
	Script Date		:	2013.11.15
	Script Notes	:	
--]]

function spawn(NPC)
	AddTimer(NPC, math.random(0,3000), "MovementPath")
end

function respawn(NPC)
	spawn(NPC)
end

function MovementPath(NPC)
	MovementLoopAddLocation(NPC, -144.44, 134.08, -191.65, 4, 0)
	MovementLoopAddLocation(NPC, -151.8, 119.21, -205.99, 4, 0)
	MovementLoopAddLocation(NPC, -150.61, 102.01, -219.03, 4, 0)
	MovementLoopAddLocation(NPC, -137, 82.64, -236.36, 4, 0)
	MovementLoopAddLocation(NPC, -125.34, 58.25, -281.31, 4, 0)
	MovementLoopAddLocation(NPC, -64.76 + math.random(-10, 10), 32.92, -283.73 + math.random(-5,5), 4, 5, "Despawn")
end