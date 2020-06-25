--[[
	Script Name		:	nfreeling.lua
	Script Purpose	:	Waypoint Path for nfreeling.lua
	Script Author	:	Devn00b
	Script Date		:	04/15/2020 05:19:51 PM
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
	MovementLoopAddLocation(NPC, 254.87, -19.6, -75.67, 2, 30)
	MovementLoopAddLocation(NPC, 269.93, -18.57, -93.63, 2, 0)
	MovementLoopAddLocation(NPC, 286.43, -18.73, -107.17, 2, 0)
	MovementLoopAddLocation(NPC, 295.06, -19.1, -114.44, 2, 0)
	MovementLoopAddLocation(NPC, 313.22, -23.03, -106.98, 2, 0)
	MovementLoopAddLocation(NPC, 325.09, -23.56, -122.41, 2, 0)
	MovementLoopAddLocation(NPC, 339.05, -24.23, -153.75, 2, 0)
	MovementLoopAddLocation(NPC, 357.59, -25.39, -173.56, 2, 0)
	MovementLoopAddLocation(NPC, 397.36, -23.49, -203.01, 2, 0)
	MovementLoopAddLocation(NPC, 414.77, -21.34, -209.1, 2, 60)
	MovementLoopAddLocation(NPC, 397.36, -23.49, -203.01, 2, 0)
	MovementLoopAddLocation(NPC, 357.59, -25.39, -173.56, 2, 0)
	MovementLoopAddLocation(NPC, 339.05, -24.23, -153.75, 2, 0)
	MovementLoopAddLocation(NPC, 325.09, -23.56, -122.41, 2, 0)
	MovementLoopAddLocation(NPC, 313.22, -23.03, -106.98, 2, 0)
	MovementLoopAddLocation(NPC, 295.06, -19.1, -114.44, 2, 0)
	MovementLoopAddLocation(NPC, 286.43, -18.73, -107.17, 2, 0)
	MovementLoopAddLocation(NPC, 269.93, -18.57, -93.63, 2, 0)
	MovementLoopAddLocation(NPC, 254.87, -19.6, -75.67, 2, 30)
end


