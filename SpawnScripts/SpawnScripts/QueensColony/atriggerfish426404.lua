--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426404.lua
	Script Purpose	:	Waypoint Path for atriggerfish426404.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 08:53:39 
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
	MovementLoopAddLocation(NPC, -20.32, -12.07, -12.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.3, -12.34, -16.8, 2, 0)
	MovementLoopAddLocation(NPC, -11.82, -11.68, -18.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.58, -12.26, -19.93, 2, 0)
	MovementLoopAddLocation(NPC, -28.89, -12.1, -22.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.54, -11.58, -16.66, 2, 0)
	MovementLoopAddLocation(NPC, -23.32, -12.62, 7.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.18, -12.48, 11.69, 2, 0)
	MovementLoopAddLocation(NPC, -32.73, -12.24, 20.39, 2, 0)
	MovementLoopAddLocation(NPC, -39.96, -12.18, 29.83, 2, 0)
	MovementLoopAddLocation(NPC, -40.27, -11.75, 33.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.83, -12.09, 30.25, 2, 0)
	MovementLoopAddLocation(NPC, -20.64, -12.59, 7.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.23, -12.41, 11.22, 2, 0)
	MovementLoopAddLocation(NPC, -41.7, -11.62, 15.17, 2, 0)
	MovementLoopAddLocation(NPC, -50.2, -11.01, 17.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.89, -10.45, 3.61, 2, 0)
	MovementLoopAddLocation(NPC, -38.57, -10.5, -10.47, 2, 0)
	MovementLoopAddLocation(NPC, -21.11, -12.41, -42.9, 2, 0)
	MovementLoopAddLocation(NPC, -20.48, -12, -47.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.85, -12.41, -28.6, 2, 0)
end


