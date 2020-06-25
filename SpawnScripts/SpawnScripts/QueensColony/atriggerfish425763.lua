--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425763.lua
	Script Purpose	:	Waypoint Path for atriggerfish425763.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:15:39 
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
	MovementLoopAddLocation(NPC, -40.47, -11.51, 13.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.42, -10.56, 14.89, 2, 0)
	MovementLoopAddLocation(NPC, -55.18, -10.25, 17.61, 2, 0)
	MovementLoopAddLocation(NPC, -67.03, -10.58, 15.41, 2, 0)
	MovementLoopAddLocation(NPC, -70.24, -10.54, 13.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -66.5, -10.45, 15.55, 2, 0)
	MovementLoopAddLocation(NPC, -54.04, -10.45, 17, 2, 0)
	MovementLoopAddLocation(NPC, -51.52, -10.67, 17.58, 2, 0)
	MovementLoopAddLocation(NPC, -44.78, -11.95, 15.93, 2, 0)
	MovementLoopAddLocation(NPC, -40.24, -12.38, 15.94, 2, 0)
	MovementLoopAddLocation(NPC, -35.44, -12.89, 18.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.12, -12.2, 14.18, 2, 0)
	MovementLoopAddLocation(NPC, -27.69, -12.13, 0.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.59, -12.33, -15.7, 2, 0)
	MovementLoopAddLocation(NPC, -8.14, -12.03, -27.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.16, -11.63, -24.72, 2, 0)
	MovementLoopAddLocation(NPC, -25.28, -11.88, -25.3, 2, 0)
	MovementLoopAddLocation(NPC, -30.73, -12, -24.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.86, -11.9, -24.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.45, -11.49, -16.99, 2, 0)
	MovementLoopAddLocation(NPC, -30.79, -10.51, -3.3, 2, 0)
	MovementLoopAddLocation(NPC, -39.33, -11.53, 12.04, 2, 0)
	MovementLoopAddLocation(NPC, -41.01, -11.57, 15.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.94, -10.61, 14.9, 2, 0)
	MovementLoopAddLocation(NPC, -53.75, -10.11, 17.5, 2, 0)
	MovementLoopAddLocation(NPC, -56.5, -10.2, 17.5, 2, 0)
	MovementLoopAddLocation(NPC, -70.59, -10.33, 13.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50.62, -10.62, 21.01, 2, 0)
	MovementLoopAddLocation(NPC, -42.03, -12.18, 17.82, 2, 0)
	MovementLoopAddLocation(NPC, -40.88, -12.19, 16.35, 2, 0)
end
