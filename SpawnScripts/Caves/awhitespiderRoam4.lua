--[[
    Script Name    : SpawnScripts/Caves/awhitespiderRoam4.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.04 06:10:18
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
	MovementLoopAddLocation(NPC, 6.37, 15.01, -80.49, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -6.34, 15.2, -76.66, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -6.34, 15.2, -76.66, 2, 0)
	MovementLoopAddLocation(NPC, -3.5, 17.15, -84.02, 2, 0)
	MovementLoopAddLocation(NPC, 4.22, 16.17, -88.25, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 4.22, 16.17, -88.25, 2, 0)
	MovementLoopAddLocation(NPC, 12.25, 13.05, -82.19, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 12.25, 13.05, -82.19, 2, 0)
	MovementLoopAddLocation(NPC, 6.79, 15.01, -82.55, 2, 0)
	MovementLoopAddLocation(NPC, -6.18, 15.11, -76.03, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -6.18, 15.11, -76.03, 2, 0)
	MovementLoopAddLocation(NPC, 4.66, 14.13, -69.31, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 4.66, 14.13, -69.31, 2, 0)
	MovementLoopAddLocation(NPC, 8.75, 13.56, -73.76, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 8.75, 13.56, -73.76, 2, 0)
	MovementLoopAddLocation(NPC, 5.43, 14.56, -72.67, 2, 0)
	MovementLoopAddLocation(NPC, -6.66, 15.84, -80.81, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -6.66, 15.84, -80.81, 2, 0)
	MovementLoopAddLocation(NPC, 9.7, 14.25, -83.81, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 9.7, 14.25, -83.81, 2, 0)
	MovementLoopAddLocation(NPC, 6.37, 15.01, -80.49, 2, 0)
end

