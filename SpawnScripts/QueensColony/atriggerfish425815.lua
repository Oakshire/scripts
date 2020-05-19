--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425815.lua
	Script Purpose	:	Waypoint Path for atriggerfish425815.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:43:32 
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
	MovementLoopAddLocation(NPC, 31.27, -11.01, -42.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.86, -11.76, -38.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.83, -11.76, -16.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.88, -12.45, -22.81, 2, 0)
	MovementLoopAddLocation(NPC, 44.44, -12, -27.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.46, -11.85, -43.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.97, -10.52, -64.27, 2, 0)
	MovementLoopAddLocation(NPC, 14.35, -10.6, -72.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.03, -11.08, -67.8, 2, 0)
	MovementLoopAddLocation(NPC, 12.11, -12.31, -23.59, 2, 0)
	MovementLoopAddLocation(NPC, 13.75, -12.61, -21.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.84, -13.27, -18.07, 2, 0)
	MovementLoopAddLocation(NPC, 21.32, -12.94, -14.11, 2, 0)
	MovementLoopAddLocation(NPC, 21.95, -12.76, -9.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.27, -12.8, -14.72, 2, 0)
	MovementLoopAddLocation(NPC, 16.96, -12.59, -18.94, 2, 0)
	MovementLoopAddLocation(NPC, -1.34, -11.77, -33.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.09, -11.47, -39.14, 2, 0)
end


