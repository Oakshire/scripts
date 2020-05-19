--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426167.lua
	Script Purpose	:	Waypoint Path for atriggerfish426167.lua
	Script Author	:	Rylec
	Script Date	:	10-23-2019 07:02:46 
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
	MovementLoopAddLocation(NPC, -56.23, -12.96, 244.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.32, -13.63, 264.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.26, -13.19, 259.1, 2, 0)
	MovementLoopAddLocation(NPC, -29.27, -12.22, 280.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.81, -13.58, 279.85, 2, 0)
	MovementLoopAddLocation(NPC, -29.92, -14.65, 278.46, 2, 0)
	MovementLoopAddLocation(NPC, -28.07, -14.95, 277.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.85, -11.48, 266.92, 2, 0)
	MovementLoopAddLocation(NPC, -28.75, -11.44, 264.28, 2, 0)
	MovementLoopAddLocation(NPC, -28.08, -11.07, 261.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.97, -11.58, 260.81, 2, 0)
	MovementLoopAddLocation(NPC, -40.61, -12.34, 258.8, 2, 0)
	MovementLoopAddLocation(NPC, -42.23, -12.53, 258.1, 2, 0)
	MovementLoopAddLocation(NPC, -52.14, -12.31, 257.64, 2, math.random(10, 20))
        MovementLoopAddLocation(NPC, -36.14, -12.53, 275.44, 2, 0)
	MovementLoopAddLocation(NPC, -21.07, -13.00, 273.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.75, -13.31, 276.19, 2, 0)
	MovementLoopAddLocation(NPC, -31.43, -13.49, 278.57, 2, 0)
	MovementLoopAddLocation(NPC, -24.31, -14.43, 280.41, 2, 0)
	MovementLoopAddLocation(NPC, -19.67, -14.97, 282.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.05, -13.56, 284.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.24, -14.45, 279.76, 2, 0)
	MovementLoopAddLocation(NPC, -34.96, -14.47, 274.86, 2, 0)
	MovementLoopAddLocation(NPC, -34.89, -14.75, 273.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.27, -14.36, 272.98, 2, 0)
	MovementLoopAddLocation(NPC, -47.52, -13.34, 254.59, 2, 0)
	MovementLoopAddLocation(NPC, -49.5, -12.64, 251.64, 2, 0)
	MovementLoopAddLocation(NPC, -52.48, -12.97, 250.61, 2, 0)
	MovementLoopAddLocation(NPC, -55.71, -13.2, 247.48, 2, 0)
end
