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
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 972.47, -25.45, 10.02, 4, 0)
	MovementLoopAddLocation(NPC, 961.84, -25.44, 9.71, 4, 0)
	MovementLoopAddLocation(NPC, 958.16, -25.44, 21.02, 4, 0)
	MovementLoopAddLocation(NPC, 949.01, -25.5, 30.17, 4, 0)
	MovementLoopAddLocation(NPC, 905.14, -25.38, 15.2, 4, 0)
	MovementLoopAddLocation(NPC, 880.26, -25.43, 30.05, 4, 0)
	MovementLoopAddLocation(NPC, 857.26, -25.5, 52.54, 4, 0)
	MovementLoopAddLocation(NPC, 838.21, -25.48, 85.91, 4, 0)
	MovementLoopAddLocation(NPC, 838.68, -25.47, 94.87, 4, 0)
	MovementLoopAddLocation(NPC, 839.47, -25.39, 89.55, 4, 0)
	MovementLoopAddLocation(NPC, 860.44, -25.44, 50.05, 4, 0)
	MovementLoopAddLocation(NPC, 892.88, -25.5, 52, 4, 0)
	MovementLoopAddLocation(NPC, 904.41, -25.37, -10.76, 4, 0)
	MovementLoopAddLocation(NPC, 891.99, -25.36, -56.95, 4, 0)
	MovementLoopAddLocation(NPC, 811.93, -20.4, -59.04, 4, 0)
	MovementLoopAddLocation(NPC, 780.24, -21.46, -57.02, 4, 0)
	MovementLoopAddLocation(NPC, 766.08, -20.64, 10.56, 4, 0)
	MovementLoopAddLocation(NPC, 724.78, -20.11, -0.22, 4, 0)
	MovementLoopAddLocation(NPC, 706.73, -20.82, -62.94, 4, 0)
	MovementLoopAddLocation(NPC, 700.29, -20.65, -68.06, 4, 0)
	MovementLoopAddLocation(NPC, 706.73, -20.82, -62.94, 4, 0)
	MovementLoopAddLocation(NPC, 724.78, -20.11, -0.22, 4, 0)
	MovementLoopAddLocation(NPC, 766.08, -20.64, 10.56, 4, 0)
	MovementLoopAddLocation(NPC, 780.24, -21.46, -57.02, 4, 0)
	MovementLoopAddLocation(NPC, 811.93, -20.4, -59.04, 4, 0)
	MovementLoopAddLocation(NPC, 891.99, -25.36, -56.95, 4, 0)
	MovementLoopAddLocation(NPC, 904.41, -25.37, -10.76, 4, 0)
	MovementLoopAddLocation(NPC, 892.88, -25.5, 52, 4, 0)
	MovementLoopAddLocation(NPC, 860.44, -25.44, 50.05, 4, 0)
	MovementLoopAddLocation(NPC, 839.47, -25.39, 89.55, 4, 0)
	MovementLoopAddLocation(NPC, 838.68, -25.47, 94.87, 4, 0)
	MovementLoopAddLocation(NPC, 838.21, -25.48, 85.91, 4, 0)
	MovementLoopAddLocation(NPC, 857.26, -25.5, 52.54, 4, 0)
	MovementLoopAddLocation(NPC, 880.26, -25.43, 30.05, 4, 0)
	MovementLoopAddLocation(NPC, 905.14, -25.38, 15.2, 4, 0)
	MovementLoopAddLocation(NPC, 949.01, -25.5, 30.17, 4, 0)
	MovementLoopAddLocation(NPC, 958.16, -25.44, 21.02, 4, 0)
	MovementLoopAddLocation(NPC, 961.84, -25.44, 9.71, 4, 0)
	MovementLoopAddLocation(NPC, 972.47, -25.45, 10.02, 4, 0)
end


