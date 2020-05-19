--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425743.lua
	Script Purpose	:	Waypoint Path for atriggerfish425743.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 08:58:47 
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
	MovementLoopAddLocation(NPC, -117.64, -10.13, 17.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.49, -10.36, 28.35, 2, 0)
	MovementLoopAddLocation(NPC, -134.16, -12.55, 44.71, 2, 0)
	MovementLoopAddLocation(NPC, -135.82, -13.38, 51.4, 2, 0)
	MovementLoopAddLocation(NPC, -135.9, -13.69, 58.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.33, -12.86, 61.52, 2, 0)
	MovementLoopAddLocation(NPC, -152.09, -12.93, 61.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -139.36, -11.84, 27.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.04, -12.49, 48.07, 2, 0)
	MovementLoopAddLocation(NPC, -147.87, -13.66, 56.35, 2, 0)
	MovementLoopAddLocation(NPC, -148.52, -13.83, 61.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -147.68, -13.52, 53.37, 2, 0)
	MovementLoopAddLocation(NPC, -144.93, -13.28, 51.18, 2, 0)
	MovementLoopAddLocation(NPC, -133.07, -12.21, 50.53, 2, 0)
	MovementLoopAddLocation(NPC, -114.63, -12.04, 49.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.8, -11.93, 48.08, 2, 0)
	MovementLoopAddLocation(NPC, -131.96, -11.55, 39.29, 2, 0)
	MovementLoopAddLocation(NPC, -139.22, -12.98, 31.58, 2, 0)
	MovementLoopAddLocation(NPC, -137.86, -12.73, 24.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.68, -11.2, 26.54, 2, 0)
end


