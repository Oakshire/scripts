--[[
    Script Name    : SpawnScripts/Caves/awhitespiderRoam3.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.04 06:10:46
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
	MovementLoopAddLocation(NPC, -8.74, 17.41, -88.61, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 4.25, 15.02, -77.19, 2, 0)
	MovementLoopAddLocation(NPC, 5.88, 14.51, -72.42, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 5.88, 14.51, -72.42, 2, 0)
	MovementLoopAddLocation(NPC, -4.94, 15.45, -78.41, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -4.94, 15.45, -78.41, 2, 0)
	MovementLoopAddLocation(NPC, 1.99, 16.58, -86.1, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 1.99, 16.58, -86.1, 2, 0)
	MovementLoopAddLocation(NPC, 14.46, 14.22, -88.84, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 14.46, 14.22, -88.84, 2, 0)
	MovementLoopAddLocation(NPC, -5.56, 17.49, -89.73, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -5.56, 17.49, -89.73, 2, 0)
	MovementLoopAddLocation(NPC, 1.8, 16.65, -86.5, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 1.8, 16.65, -86.5, 2, 0)
	MovementLoopAddLocation(NPC, -4.22, 13.8, -66.79, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -4.22, 13.8, -66.79, 2, 0)
	MovementLoopAddLocation(NPC, 6.61, 14.59, -74.79, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 6.61, 14.59, -74.79, 2, 0)
	MovementLoopAddLocation(NPC, 1.91, 16.64, -87.1, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 1.91, 16.64, -87.1, 2, 0)
	MovementLoopAddLocation(NPC, -8.74, 17.41, -88.61, 2, 0)
end

