--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427714.lua
	Script Purpose	:	Waypoint Path for aneedlefang427714.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:26:41 
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
	MovementLoopAddLocation(NPC, -35.85, -11.03, -19.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -65.34, -10.3, -9.02, 2, 0)
	MovementLoopAddLocation(NPC, -92.7, -10.45, -2.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -86.15, -11.27, -8.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -84.14, -11.29, -13.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -77.37, -10.26, -10.77, 2, 0)
	MovementLoopAddLocation(NPC, -50.16, -11, -1.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.69, -10.34, -6.35, 2, 0)
	MovementLoopAddLocation(NPC, -36.1, -10.33, -27.36, 2, 0)
	MovementLoopAddLocation(NPC, -25.32, -11.53, -44.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.77, -11.14, -50.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.17, -11.02, -30.25, 2, 0)
	MovementLoopAddLocation(NPC, -16.73, -11.18, -11.23, 2, 0)
	MovementLoopAddLocation(NPC, -10.54, -11.69, -5.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.52, -11.11, -12.38, 2, 0)
	MovementLoopAddLocation(NPC, -13.93, -11.14, -30.64, 2, 0)
	MovementLoopAddLocation(NPC, -13.02, -12.12, -44.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.89, -12.18, -31.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.93, -11.99, -21.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.29, -11.85, -24.13, 2, 0)
	MovementLoopAddLocation(NPC, -33.68, -11.86, -27.1, 2, 0)
	MovementLoopAddLocation(NPC, -38.06, -11.9, -30.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.87, -11.17, -22.07, 2, 0)
end

