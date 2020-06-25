--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427926.lua
	Script Purpose	:	Waypoint Path for aneedlefang427926.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:17:37 
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
	MovementLoopAddLocation(NPC, -40.13, -13.89, 23.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -42.07, -12.41, 18.27, 2, 0)
	MovementLoopAddLocation(NPC, -44.52, -10.44, 12.11, 2, 0)
	MovementLoopAddLocation(NPC, -46.67, -10.44, -34.62, 2, 0)
	MovementLoopAddLocation(NPC, -58.49, -10.3, -51.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -67.35, -11.15, -47.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -65.27, -10.3, -34.82, 2, 0)
	MovementLoopAddLocation(NPC, -69.25, -10.2, -18.95, 2, 0)
	MovementLoopAddLocation(NPC, -65.77, -10.2, -11.27, 2, 0)
	MovementLoopAddLocation(NPC, -60.55, -10.7, -10.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.08, -10.3, -19.93, 2, 0)
	MovementLoopAddLocation(NPC, -29.21, -10.22, -32.79, 2, 0)
	MovementLoopAddLocation(NPC, -18.94, -10.71, -39.71, 2, 0)
	MovementLoopAddLocation(NPC, -7.57, -11.96, -45.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -11.35, -11.09, -37.34, 2, 0)
	MovementLoopAddLocation(NPC, -12.45, -12.15, -15.92, 2, 0)
	MovementLoopAddLocation(NPC, -10.45, -12.93, -5.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.53, -12.02, 1.1, 2, 0)
	MovementLoopAddLocation(NPC, -34.07, -11.85, 21.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.96, -10.3, 0.92, 2, 0)
	MovementLoopAddLocation(NPC, -35.54, -10.42, -14.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.6, -11.52, -22.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.49, -10.3, -8.16, 2, 0)
	MovementLoopAddLocation(NPC, -34.88, -10.29, 7.84, 2, 0)
	MovementLoopAddLocation(NPC, -40.13, -12.79, 30.56, 2, math.random(10, 20))
end


