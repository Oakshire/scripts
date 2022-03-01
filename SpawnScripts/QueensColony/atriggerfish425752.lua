--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425752.lua
	Script Purpose	:	Waypoint Path for atriggerfish425752.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:16:16 
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
	MovementLoopAddLocation(NPC, -137.6, -12.97, 145.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -123.38, -13.09, 165.84, 2, 0)
	MovementLoopAddLocation(NPC, -110.56, -12.99, 179.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -116.94, -13.97, 184.56, 2, 0)
	MovementLoopAddLocation(NPC, -135.79, -14.97, 209.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -138.31, -12.56, 200.78, 2, 0)
	MovementLoopAddLocation(NPC, -139, -12.62, 196.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.93, -13.44, 195.42, 2, 0)
	MovementLoopAddLocation(NPC, -112.42, -13.82, 190.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -121.59, -13.77, 179.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.83, -12.55, 175.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.77, -13.3, 180.88, 2, 0)
	MovementLoopAddLocation(NPC, -143.33, -14.98, 180.5, 2, 0)
	MovementLoopAddLocation(NPC, -145, -15.01, 179.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.02, -13.01, 183.29, 2, 0)
	MovementLoopAddLocation(NPC, -135.58, -12.63, 186.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.13, -12.55, 178.58, 2, 0)
	MovementLoopAddLocation(NPC, -115.97, -12.46, 177.99, 2, 0)
	MovementLoopAddLocation(NPC, -114.04, -12.49, 178.08, 2, 0)
	MovementLoopAddLocation(NPC, -111.05, -12.16, 176.51, 2, 0)
	MovementLoopAddLocation(NPC, -107.9, -12.14, 175.58, 2, 0)
	MovementLoopAddLocation(NPC, -105.39, -12.03, 175.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.64, -13.94, 176.07, 2, 0)
	MovementLoopAddLocation(NPC, -132.17, -14.96, 186.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.72, -13.32, 161.77, 2, 0)
	MovementLoopAddLocation(NPC, -128.73, -13.01, 156.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.26, -13.3, 147.84, 2, 0)
	MovementLoopAddLocation(NPC, -137.43, -12.92, 146.13, 2, 0)
	MovementLoopAddLocation(NPC, -135.23, -12.85, 137.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -138.03, -12.94, 141.55, 2, 0)
end
