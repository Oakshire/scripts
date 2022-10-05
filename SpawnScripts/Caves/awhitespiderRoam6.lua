--[[
    Script Name    : SpawnScripts/Caves/awhitespiderRoam6.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.04 07:10:37
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
	MovementLoopAddLocation(NPC, 3.94, 13.18, -63.31, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 3.48, 12.64, -53.38, 2, 0)
	MovementLoopAddLocation(NPC, -2.55, 12.8, -53.44, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -2.55, 12.8, -53.44, 2, 0)
	MovementLoopAddLocation(NPC, 2.66, 12.67, -53.7, 2, 0)
	MovementLoopAddLocation(NPC, 8.19, 13.16, -66.6, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 8.19, 13.16, -66.6, 2, 0)
	MovementLoopAddLocation(NPC, 10.14, 13.15, -76.84, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 10.14, 13.15, -76.84, 2, 0)
	MovementLoopAddLocation(NPC, -0.16, 14.73, -73.48, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -0.16, 14.73, -73.48, 2, 0)
	MovementLoopAddLocation(NPC, 2.38, 15.77, -81.66, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 2.38, 15.77, -81.66, 2, 0)
	MovementLoopAddLocation(NPC, -1.72, 14.22, -69.98, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1.72, 14.22, -69.98, 2, 0)
	MovementLoopAddLocation(NPC, 8.65, 14.02, -80.46, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 8.65, 14.02, -80.46, 2, 0)
	MovementLoopAddLocation(NPC, 1.41, 16.74, -86.76, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 1.41, 16.74, -86.76, 2, 0)
	MovementLoopAddLocation(NPC, -0.81, 13.98, -68.15, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -0.81, 13.98, -68.15, 2, 0)
	MovementLoopAddLocation(NPC, -6.86, 13.96, -68, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -6.86, 13.96, -68, 2, 0)
	MovementLoopAddLocation(NPC, 3.94, 13.18, -63.31, 2, 0)
end

