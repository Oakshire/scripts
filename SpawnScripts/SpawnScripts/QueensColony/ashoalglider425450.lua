--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425450.lua
	Script Purpose	:	Waypoint Path for ashoalglider425450.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:15:50 
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
	MovementLoopAddLocation(NPC, -139.38, -13.22, 164.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -103.35, -11.54, 149.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -118.84, -11.11, 162.86, 2, 0)
	MovementLoopAddLocation(NPC, -128.2, -12.91, 173.25, 2, 0)
	MovementLoopAddLocation(NPC, -132.95, -13.78, 187.1, 2, 0)
	MovementLoopAddLocation(NPC, -134.05, -14.44, 201.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.71, -13.32, 185.39, 2, 0)
	MovementLoopAddLocation(NPC, -133.97, -13.12, 171.58, 2, 0)
	MovementLoopAddLocation(NPC, -135.78, -13.33, 164.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.72, -12.16, 183.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.88, -13.16, 184.07, 2, 0)
	MovementLoopAddLocation(NPC, -141.34, -13.31, 190.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -126.96, -12.99, 193.91, 2, 0)
	MovementLoopAddLocation(NPC, -118.09, -14.38, 192.87, 2, 0)
	MovementLoopAddLocation(NPC, -114.02, -14.47, 190.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.87, -12.08, 190.54, 2, 0)
	MovementLoopAddLocation(NPC, -123.37, -12.09, 190.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.84, -13.01, 208.94, 2, 0)
	MovementLoopAddLocation(NPC, -144.61, -13.23, 216.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -123.01, -14.34, 194.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -141.15, -13.32, 198.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.7, -13.03, 184.95, 2, 0)
end

