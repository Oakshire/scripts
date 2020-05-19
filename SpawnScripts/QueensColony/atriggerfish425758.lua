--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425758.lua
	Script Purpose	:	Waypoint Path for atriggerfish425758.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 08:59:51 
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
	MovementLoopAddLocation(NPC, -140.86, -11.72, 9.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.4, -11.77, 35.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.71, -12.49, 48.7, 2, 0)
	MovementLoopAddLocation(NPC, -144.52, -13.48, 52.15, 2, 0)
	MovementLoopAddLocation(NPC, -145.4, -13.93, 57.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -147.05, -12.82, 19.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.13, -13.17, 8.68, 2, 0)
	MovementLoopAddLocation(NPC, -138.47, -13.15, 7.94, 2, 0)
	MovementLoopAddLocation(NPC, -134.39, -12.35, 9.22, 2, 0)
	MovementLoopAddLocation(NPC, -130.31, -11.55, 11.84, 2, 0)
	MovementLoopAddLocation(NPC, -123.93, -11.85, 15.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.81, -11.53, 14.11, 2, 0)
	MovementLoopAddLocation(NPC, -135.69, -12.44, 8.04, 2, 0)
	MovementLoopAddLocation(NPC, -144.73, -13.7, 7.82, 2, 0)
	MovementLoopAddLocation(NPC, -146.93, -13.91, 13.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.9, -13.62, 19.19, 2, 0)
	MovementLoopAddLocation(NPC, -137.79, -12.13, 25.75, 2, 0)
	MovementLoopAddLocation(NPC, -135.51, -11.56, 27.35, 2, 0)
	MovementLoopAddLocation(NPC, -128.41, -11.5, 27.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -138.37, -10.56, 7.39, 2, 0)
	MovementLoopAddLocation(NPC, -139.09, -11.5, 6.8, 2, 0)
end


