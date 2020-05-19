--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425555.lua
	Script Purpose	:	Waypoint Path for ashoalglider425555.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 08:53:49 
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
	MovementLoopAddLocation(NPC, -20.5, -11.46, -8.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.97, -12.06, -27.88, 2, 0)
	MovementLoopAddLocation(NPC, -22.89, -12.27, -34.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.99, -11.82, -37.3, 2, 0)
	MovementLoopAddLocation(NPC, -8.17, -11.48, -42.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.57, -11.88, -46, 2, 0)
	MovementLoopAddLocation(NPC, -31.72, -11, -48.62, 2, 0)
	MovementLoopAddLocation(NPC, -45.5, -10.7, -54.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.08, -11.21, -40.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.33, -10.7, -44.3, 2, 0)
	MovementLoopAddLocation(NPC, -41.86, -10.7, -49.02, 2, 0)
	MovementLoopAddLocation(NPC, -48.36, -10.7, -54.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.74, -10.7, -47.91, 2, 0)
	MovementLoopAddLocation(NPC, -25.84, -10.7, -17.11, 2, 0)
	MovementLoopAddLocation(NPC, -10.26, -11.55, -10.16, 2, math.random(10, 20))
end


