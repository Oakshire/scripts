--[[
    Script Name    : SpawnScripts/DownBelow_Classic/arottingcitizenRoamer2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.15 03:01:59
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -197.74, 0, -28.67, 1, 4)
	MovementLoopAddLocation(NPC, -197.36, 0, -34.27, 1, 0)
	MovementLoopAddLocation(NPC, -196.14, 0, -36.24, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, -196.14, 0, -36.24, 1, 0)
	MovementLoopAddLocation(NPC, -200.38, 0, -31.2, 1, 0)
	MovementLoopAddLocation(NPC, -201.99, 0, -27.85, 1, 0)
	MovementLoopAddLocation(NPC, -205.89, 0, -26.82, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, -205.89, 0, -26.82, 1, 0)
	MovementLoopAddLocation(NPC, -202.41, 0, -27.14, 1, 0)
	MovementLoopAddLocation(NPC, -199.5, 0, -29.42, 1, 0)
	MovementLoopAddLocation(NPC, -196.32, 0, -30.46, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, -196.32, 0, -30.46, 1, 0)
	MovementLoopAddLocation(NPC, -198.8, 0, -30.15, 1, 0)
	MovementLoopAddLocation(NPC, -202.25, 0, -33.13, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, -202.25, 0, -33.13, 1, 0)
	MovementLoopAddLocation(NPC, -202.25, 0, -33.13, 1, 0)
	MovementLoopAddLocation(NPC, -200.66, 0, -32.08, 1, 0)
	MovementLoopAddLocation(NPC, -199.61, 0, -25.92, 1, 0)
	MovementLoopAddLocation(NPC, -201.84, 0, -22.73, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, -201.84, 0, -22.73, 1, 0)
	MovementLoopAddLocation(NPC, -197.74, 0, -28.67, 1, 3)
end

