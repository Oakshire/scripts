--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427046.lua
	Script Purpose	:	Waypoint Path for areefturtle427046.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:19:40 
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
	MovementLoopAddLocation(NPC, -17.51, -11.81, -28.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.4, -11.85, -31.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.83, -11.93, -26.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.08, -11.28, -33.62, 2, 0)
	MovementLoopAddLocation(NPC, -20.93, -12.17, -38.79, 2, 0)
	MovementLoopAddLocation(NPC, -22.21, -12.69, -42.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.87, -12.08, -41.06, 2, 0)
	MovementLoopAddLocation(NPC, -7.15, -11.57, -36.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.33, -11.21, -32.3, 2, 0)
	MovementLoopAddLocation(NPC, -7.92, -11.42, -25.22, 2, 0)
	MovementLoopAddLocation(NPC, -21.49, -10.48, -8.18, 2, 0)
	MovementLoopAddLocation(NPC, -28.34, -11.01, -0.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.17, -11.09, -10.34, 2, 0)
	MovementLoopAddLocation(NPC, -24.82, -11.23, -19.19, 2, 0)
	MovementLoopAddLocation(NPC, -6.97, -11.66, -49.29, 2, 0)
	MovementLoopAddLocation(NPC, -4.22, -11.63, -55.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.66, -12.02, -38.11, 2, 0)
	MovementLoopAddLocation(NPC, -3.37, -11.89, -28.06, 2, math.random(10, 20))
end


