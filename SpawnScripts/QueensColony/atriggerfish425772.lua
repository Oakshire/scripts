--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425772.lua
	Script Purpose	:	Waypoint Path for atriggerfish425772.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:19:18 
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
	MovementLoopAddLocation(NPC, -13.08, -12.01, -37.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.23, -11.72, -29.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.2, -12.07, -30.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.31, -11.76, -34.43, 2, 0)
	MovementLoopAddLocation(NPC, -14.83, -11.92, -39.51, 2, 0)
	MovementLoopAddLocation(NPC, -14.31, -11.43, -44.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.76, -10.58, -51.44, 2, 0)
	MovementLoopAddLocation(NPC, -12.17, -10.47, -61.81, 2, 0)
	MovementLoopAddLocation(NPC, -7.96, -10.23, -69.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.79, -10.63, -49.21, 2, 0)
	MovementLoopAddLocation(NPC, -24.6, -11.67, -31.81, 2, 0)
	MovementLoopAddLocation(NPC, -28.17, -11.51, -24.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.87, -11.37, -26.56, 2, 0)
	MovementLoopAddLocation(NPC, -14.81, -11.29, -31.75, 2, 0)
	MovementLoopAddLocation(NPC, -3.42, -11.94, -37.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.19, -12.12, -22.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.97, -12.82, -7.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.54, -12.75, -16.82, 2, 0)
	MovementLoopAddLocation(NPC, -27.92, -12.2, -20.98, 2, 0)
	MovementLoopAddLocation(NPC, -40.33, -11.71, -24.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.7, -11.99, -26.12, 2, 0)
	MovementLoopAddLocation(NPC, -20.98, -11.61, -30.86, 2, 0)
end


