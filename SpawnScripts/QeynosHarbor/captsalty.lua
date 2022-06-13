--[[
	Script Name		:	captsalty.lua
	Script Purpose	:	Waypoint Path for captsalty.lua
	Script Author	:	Devn00b
	Script Date		:	04/09/2020 03:52:17 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 972.47, -25.45, 10.02, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 961.84, -25.44, 9.71, 1, 0)
	MovementLoopAddLocation(NPC, 958.16, -25.44, 21.02, 1, 0)
	MovementLoopAddLocation(NPC, 949.01, -25.5, 30.17, 1, 0)
	MovementLoopAddLocation(NPC, 905.14, -25.38, 15.2, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 880.26, -25.43, 30.05, 1, 0)
	MovementLoopAddLocation(NPC, 857.26, -25.5, 52.54, 1, 0)
	MovementLoopAddLocation(NPC, 838.21, -25.48, 85.91, 1, 0)
	MovementLoopAddLocation(NPC, 838.68, -25.47, 94.87, 1, 0)
	MovementLoopAddLocation(NPC, 839.47, -25.39, 89.55, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 860.44, -25.44, 50.05, 1, 0)
	MovementLoopAddLocation(NPC, 892.88, -25.5, 52, 4, 0)
	MovementLoopAddLocation(NPC, 904.41, -25.37, -10.76, 1, 0)
	MovementLoopAddLocation(NPC, 891.99, -25.36, -56.95, 1, 0)
	MovementLoopAddLocation(NPC, 811.93, -20.4, -59.04, 1, 0)
	MovementLoopAddLocation(NPC, 780.24, -21.46, -57.02, 1, 0)
	MovementLoopAddLocation(NPC, 766.08, -20.64, 10.56, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 724.78, -20.11, -0.22, 1, 0)
	MovementLoopAddLocation(NPC, 706.73, -20.82, -62.94, 1, 0)
	MovementLoopAddLocation(NPC, 700.29, -20.65, -68.06, 1, 0)
	MovementLoopAddLocation(NPC, 706.73, -20.82, -62.94, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 724.78, -20.11, -0.22, 4, 0)
	MovementLoopAddLocation(NPC, 766.08, -20.64, 10.56, 4, 0)
	MovementLoopAddLocation(NPC, 780.24, -21.46, -57.02, 4, 0)
	MovementLoopAddLocation(NPC, 811.93, -20.4, -59.04, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 891.99, -25.36, -56.95, 1, 0)
	MovementLoopAddLocation(NPC, 904.41, -25.37, -10.76, 1, 0)
	MovementLoopAddLocation(NPC, 892.88, -25.5, 52, 1, 0)
	MovementLoopAddLocation(NPC, 860.44, -25.44, 50.05, 2, math.random(6,20))
	MovementLoopAddLocation(NPC, 839.47, -25.39, 89.55, 4, 0)
	MovementLoopAddLocation(NPC, 838.68, -25.47, 94.87, 4, 0)
	MovementLoopAddLocation(NPC, 838.21, -25.48, 85.91, 4, 0)
	MovementLoopAddLocation(NPC, 857.26, -25.5, 52.54, 4, 0)
	MovementLoopAddLocation(NPC, 880.26, -25.43, 30.05, 2, 0)
	MovementLoopAddLocation(NPC, 905.14, -25.38, 15.2, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 949.01, -25.5, 30.17, 1, 0)
	MovementLoopAddLocation(NPC, 958.16, -25.44, 21.02, 1, 0)
	MovementLoopAddLocation(NPC, 961.84, -25.44, 9.71, 1, 0)
	MovementLoopAddLocation(NPC, 972.47, -25.45, 10.02, 1, math.random(6,20))
end


