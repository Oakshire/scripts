--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425768.lua
	Script Purpose	:	Waypoint Path for atriggerfish425768.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:17:45 
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
	MovementLoopAddLocation(NPC, -9.86, -13.02, -19.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.12, -12.7, -14.84, 2, 0)
	MovementLoopAddLocation(NPC, -18.19, -12.63, 1.74, 2, 0)
	MovementLoopAddLocation(NPC, -19.61, -12.74, 5.06, 2, 0)
	MovementLoopAddLocation(NPC, -24.65, -13.23, 16.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.55, -13.4, 20.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.76, -13.07, 13.2, 2, 0)
	MovementLoopAddLocation(NPC, -19.93, -12.46, 2.06, 2, 0)
	MovementLoopAddLocation(NPC, -17.86, -12.36, -4.08, 2, 0)
	MovementLoopAddLocation(NPC, -14.49, -12.46, -17.43, 2, 0)
	MovementLoopAddLocation(NPC, -10.46, -12.05, -21.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21, -11.55, -26.41, 2, 0)
	MovementLoopAddLocation(NPC, -26.02, -11.47, -30.16, 2, 0)
	MovementLoopAddLocation(NPC, -28.34, -11.56, -31.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.61, -11.99, -18.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.72, -11.97, -24.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.05, -12.9, -28.28, 2, 0)
	MovementLoopAddLocation(NPC, -28.13, -13.28, -30.01, 2, 0)
	MovementLoopAddLocation(NPC, -28.89, -13.47, -31.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.87, -12.6, -28.26, 2, 0)
	MovementLoopAddLocation(NPC, -21.22, -12.3, -24.32, 2, 0)
	MovementLoopAddLocation(NPC, -17.56, -12.48, -19.53, 2, 0)
end


