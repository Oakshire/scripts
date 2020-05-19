--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427737.lua
	Script Purpose	:	Waypoint Path for aneedlefang427737.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:28:00 
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
	MovementLoopAddLocation(NPC, -47.68, -11.89, 26.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.85, -12.74, 17.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.36, -10.77, 14.08, 2, 0)
	MovementLoopAddLocation(NPC, -49.14, -10.3, 2.58, 2, 0)
	MovementLoopAddLocation(NPC, -56.98, -10.49, -1.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.52, -10.35, -11.38, 2, 0)
	MovementLoopAddLocation(NPC, -50.11, -10.3, -28.93, 2, 0)
	MovementLoopAddLocation(NPC, -41.62, -10.24, -51.55, 2, 0)
	MovementLoopAddLocation(NPC, -39.99, -11.11, -62.43, 2, 0)
	MovementLoopAddLocation(NPC, -37.23, -11.26, -75.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.54, -10.3, -63.59, 2, 0)
	MovementLoopAddLocation(NPC, -35.83, -10.42, -44.36, 2, 0)
	MovementLoopAddLocation(NPC, -34.07, -12.39, -35.69, 2, 0)
	MovementLoopAddLocation(NPC, -35.55, -12.65, -23.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.03, -12.68, -35.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.69, -12.09, -41.25, 2, 0)
	MovementLoopAddLocation(NPC, -16.66, -11.14, -49.85, 2, 0)
	MovementLoopAddLocation(NPC, -10.44, -10.53, -58.59, 2, 0)
	MovementLoopAddLocation(NPC, -5.48, -12.69, -63.82, 2, 0)
	MovementLoopAddLocation(NPC, -0.11, -12.98, -67.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.81, -11.45, -61.81, 2, 0)
	MovementLoopAddLocation(NPC, -13.57, -10.29, -54.5, 2, 0)
	MovementLoopAddLocation(NPC, -42.54, -10.53, -33.71, 2, 0)
	MovementLoopAddLocation(NPC, -50.61, -10.67, -30.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50, -10.34, -27.85, 2, 0)
	MovementLoopAddLocation(NPC, -48.78, -10.3, 15.35, 2, 0)
end


