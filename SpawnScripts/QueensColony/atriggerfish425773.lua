--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425773.lua
	Script Purpose	:	Waypoint Path for atriggerfish425773.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:19:36 
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
	MovementLoopAddLocation(NPC, -22.9, -12.06, -24.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.09, -11.98, -32.33, 2, 0)
	MovementLoopAddLocation(NPC, -28.4, -11.05, -52.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.81, -11.59, -44.15, 2, 0)
	MovementLoopAddLocation(NPC, -17.3, -11.94, -22.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.56, -12.44, -31.46, 2, 0)
	MovementLoopAddLocation(NPC, -39.81, -12.13, -33.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.52, -11.97, -30.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.02, -12.01, -16.92, 2, 0)
	MovementLoopAddLocation(NPC, -11.74, -12.03, -7.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.24, -10.51, -7.03, 2, 0)
	MovementLoopAddLocation(NPC, -50.13, -10.48, -4.37, 2, 0)
	MovementLoopAddLocation(NPC, -54.32, -10.56, 0.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.94, -10.2, -9.95, 2, 0)
	MovementLoopAddLocation(NPC, -38.33, -10.38, -18.32, 2, 0)
	MovementLoopAddLocation(NPC, -29.03, -11.07, -24.16, 2, 0)
	MovementLoopAddLocation(NPC, -26.02, -11.54, -25.33, 2, 0)
end


