--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427377.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427377.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:17:55 
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
	MovementLoopAddLocation(NPC, -18.32, -11.95, -34.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.02, -12.07, -35.21, 2, 0)
	MovementLoopAddLocation(NPC, -24.12, -12.24, -35.64, 2, 0)
	MovementLoopAddLocation(NPC, -28.06, -12.34, -34.54, 2, 0)
	MovementLoopAddLocation(NPC, -33.03, -12.19, -31.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.25, -12.05, -42.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.97, -12.4, -36.57, 2, 0)
	MovementLoopAddLocation(NPC, -17.23, -11.49, -31.55, 2, 0)
	MovementLoopAddLocation(NPC, -7.79, -11.74, -22.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.75, -11.56, -31.57, 2, 0)
	MovementLoopAddLocation(NPC, -24.06, -13.08, -36.84, 2, 0)
	MovementLoopAddLocation(NPC, -26.4, -13.18, -41.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.51, -11.67, -43.62, 2, 0)
	MovementLoopAddLocation(NPC, -13.3, -11.68, -43.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.64, -11.4, -34.11, 2, 0)
	MovementLoopAddLocation(NPC, -15.95, -11.41, -30.23, 2, 0)
	MovementLoopAddLocation(NPC, -13.33, -11.76, -8.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.12, -11.68, -7.27, 2, 0)
	MovementLoopAddLocation(NPC, -27.87, -11, 0, 2, 0)
	MovementLoopAddLocation(NPC, -33.06, -11.12, 5.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.36, -11.16, -2.72, 2, 0)
	MovementLoopAddLocation(NPC, -25.43, -11.31, -17.36, 2, 0)
	MovementLoopAddLocation(NPC, -19.66, -12.18, -32.56, 2, 0)
end


