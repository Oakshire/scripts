--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427084.lua
	Script Purpose	:	Waypoint Path for areefturtle427084.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:41:34 
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
	MovementLoopAddLocation(NPC, 7.11, -12.86, -31.485, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.72, -12.08, -25.85, 2, 0)
	MovementLoopAddLocation(NPC, 19.5, -13.12, -19.34, 2, 0)
	MovementLoopAddLocation(NPC, 22.29, -13.74, -15.99, 2, 0)
	MovementLoopAddLocation(NPC, 24.54, -14.18, -12.58, 2, 0)
	MovementLoopAddLocation(NPC, 26.78, -14.83, -6.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.21, -14.47, -15.29, 2, 0)
	MovementLoopAddLocation(NPC, 22.15, -14.22, -19.01, 2, 0)
	MovementLoopAddLocation(NPC, 17.85, -13.68, -22.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.33, -12.56, -14.99, 2, 0)
	MovementLoopAddLocation(NPC, 40.36, -11.95, -11.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.27, -10.95, -14.78, 2, 0)
	MovementLoopAddLocation(NPC, 16.55, -11.12, -22.66, 2, 0)
	MovementLoopAddLocation(NPC, 7.99, -11.71, -33.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.17, -11.94, -13.87, 2, 0)
	MovementLoopAddLocation(NPC, 20.48, -12.78, -8.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.56, -12.46, -9.87, 2, 0)
	MovementLoopAddLocation(NPC, 14.98, -11.88, -18.97, 2, 0)
	MovementLoopAddLocation(NPC, 10.67, -12.19, -34.27, 2, math.random(10, 20))
end


