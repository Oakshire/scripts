--[[
	Script Name		:	ratthree.lua
	Script Purpose	:	Waypoint Path for ratthree.lua
	Script Author	:	Devn00b
	Script Date		:	04/09/2020 04:30:37 PM
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
	MovementLoopAddLocation(NPC, 734.57, -21.39, -41.69, 4, 0)
	MovementLoopAddLocation(NPC, 804.71, -20.41, -59.3, 4, 0)
	MovementLoopAddLocation(NPC, 845.7, -25.43, -58.79, 4, 0)
	MovementLoopAddLocation(NPC, 895.37, -25.41, -57.54, 4, 0)
	MovementLoopAddLocation(NPC, 906.43, -25.4, -24.67, 4, 0)
	MovementLoopAddLocation(NPC, 894.58, -25.53, -22.1, 4, 0)
	MovementLoopAddLocation(NPC, 883.24, -25.44, -29.69, 4, 0)
	MovementLoopAddLocation(NPC, 872.85, -25.47, -32.82, 4, 0)
	MovementLoopAddLocation(NPC, 851.1, -25.47, -29.69, 4, 0)
	MovementLoopAddLocation(NPC, 831.81, -25.43, -20.37, 4, 0)
	MovementLoopAddLocation(NPC, 829.96, -25.43, -9.15, 4, 0)
	MovementLoopAddLocation(NPC, 838.11, -25.45, -5.72, 4, 0)
	MovementLoopAddLocation(NPC, 847.08, -25.46, 12.45, 4, 0)
	MovementLoopAddLocation(NPC, 861.07, -25.44, 24.6, 4, 0)
	MovementLoopAddLocation(NPC, 847.08, -25.46, 12.45, 4, 0)
	MovementLoopAddLocation(NPC, 838.11, -25.45, -5.72, 4, 0)
	MovementLoopAddLocation(NPC, 829.96, -25.43, -9.15, 4, 0)
	MovementLoopAddLocation(NPC, 831.81, -25.43, -20.37, 4, 0)
	MovementLoopAddLocation(NPC, 851.1, -25.47, -29.69, 4, 0)
	MovementLoopAddLocation(NPC, 872.85, -25.47, -32.82, 4, 0)
	MovementLoopAddLocation(NPC, 883.24, -25.44, -29.69, 4, 0)
	MovementLoopAddLocation(NPC, 894.58, -25.53, -22.1, 4, 0)
	MovementLoopAddLocation(NPC, 906.43, -25.4, -24.67, 4, 0)
	MovementLoopAddLocation(NPC, 895.37, -25.41, -57.54, 4, 0)
	MovementLoopAddLocation(NPC, 845.7, -25.43, -58.79, 4, 0)
	MovementLoopAddLocation(NPC, 804.71, -20.41, -59.3, 4, 0)
	MovementLoopAddLocation(NPC, 734.57, -21.39, -41.69, 4, 0)
end


