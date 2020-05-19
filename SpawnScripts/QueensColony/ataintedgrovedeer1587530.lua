--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedgrovedeer1587530.lua
	Script Purpose	:	Waypoint Path for ataintedgrovedeer1587530.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:40:03 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 178.33, 1.33, 75.57, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 173.49, 1.35, 64.12, 2, 0)
	MovementLoopAddLocation(NPC, 159.36, 1.4, 54.6, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 157.18, 1.41, 55.2, 2, 0)
	MovementLoopAddLocation(NPC, 151.29, 1.23, 54.49, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 153.02, 1.43, 59.94, 2, 0)
	MovementLoopAddLocation(NPC, 159.06, 1.4, 64.16, 2, 0)
	MovementLoopAddLocation(NPC, 169.92, 1.36, 67.98, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 167.04, 1.37, 65.69, 2, 0)
	MovementLoopAddLocation(NPC, 163.87, 1.39, 57.58, 2, 0)
	MovementLoopAddLocation(NPC, 147.33, 1.45, 41.64, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 153.09, 1.32, 21.79, 2, 0)
	MovementLoopAddLocation(NPC, 154.15, 0.9, 11.87, 2, 0)
	MovementLoopAddLocation(NPC, 155.17, 1.21, 8.76, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 146.35, 0.19, 14.58, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 147.8, 0.19, 17.86, 2, 0)
	MovementLoopAddLocation(NPC, 153.69, 1.04, 19.78, 2, 0)
	MovementLoopAddLocation(NPC, 175.15, 1.15, 30.94, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 171.21, 1.36, 35.7, 2, 0)
	MovementLoopAddLocation(NPC, 161.31, 1.4, 41.45, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 191.45, 1.29, 37.64, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 187.16, 1.3, 48.66, 2, 0)
	MovementLoopAddLocation(NPC, 181.68, 1.32, 69.71, 2, 0)
end


