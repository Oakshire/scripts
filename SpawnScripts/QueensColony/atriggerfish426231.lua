--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426231.lua
	Script Purpose	:	Waypoint Path for atriggerfish426231.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:26:22 
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
	MovementLoopAddLocation(NPC, -33.6, -12.06, -28.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.55, -11.26, -24.31, 2, 0)
	MovementLoopAddLocation(NPC, -49.59, -10.32, -16.03, 2, 0)
	MovementLoopAddLocation(NPC, -55.31, -10.45, -12.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.32, -10.52, -11.22, 2, 0)
	MovementLoopAddLocation(NPC, -7.24, -11.44, -12.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.12, -11.41, -17.37, 2, 0)
	MovementLoopAddLocation(NPC, -21.53, -11.57, -24.69, 2, 0)
	MovementLoopAddLocation(NPC, -25.08, -12.81, -26.95, 2, 0)
	MovementLoopAddLocation(NPC, -25.6, -13, -28.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.97, -12.47, -26.81, 2, 0)
	MovementLoopAddLocation(NPC, -18.81, -12.52, -18.12, 2, 0)
	MovementLoopAddLocation(NPC, -14.17, -12.72, -15.9, 2, 0)
	MovementLoopAddLocation(NPC, -10.54, -13.02, -11.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.96, -12.31, -22.91, 2, 0)
	MovementLoopAddLocation(NPC, -19.31, -12.39, -26.86, 2, 0)
	MovementLoopAddLocation(NPC, -28.12, -12.92, -35.81, 2, 0)
	MovementLoopAddLocation(NPC, -32.64, -12.88, -41.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.81, -12.62, -44.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.71, -12.4, -29.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.69, -10.98, -40.8, 2, 0)
	MovementLoopAddLocation(NPC, -50.13, -10.39, -45.24, 2, 0)
	MovementLoopAddLocation(NPC, -55.01, -11.11, -50.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.81, -10.45, -48.77, 2, 0)
	MovementLoopAddLocation(NPC, -50.14, -10.41, -42.77, 2, 0)
	MovementLoopAddLocation(NPC, -38.1, -11.46, -28.58, 2, 0)
end

