--[[
	Script Name		:	Fangbuster.lua
	Script Purpose	:	Waypoint Path for Fangbuster.lua
	Script Author	:	Auto Generated
	Script Date		:	04/26/2020 01:06:06 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -92.3, -25, 199.13, 2, 0)
	MovementLoopAddLocation(NPC, -84.57, -21.36, 206.16, 2, 0)
	MovementLoopAddLocation(NPC, -76.42, -17.14, 209.51, 2, 0)
	MovementLoopAddLocation(NPC, -69.27, -13.53, 209.02, 2, 0)
	MovementLoopAddLocation(NPC, -62.62, -10.05, 206, 2, 0)
	MovementLoopAddLocation(NPC, -57.53, -8.26, 200.94, 2, 0)
	MovementLoopAddLocation(NPC, -57.63, -8.26, 191.69, 2, 0)
	MovementLoopAddLocation(NPC, -63.2, -10.08, 184.64, 2, 0)
	MovementLoopAddLocation(NPC, -70.02, -13.82, 181.73, 2, 0)
	MovementLoopAddLocation(NPC, -76.73, -17.39, 181.83, 2, 0)
	MovementLoopAddLocation(NPC, -82.24, -20.43, 184.31, 2, 0)
	MovementLoopAddLocation(NPC, -88.48, -24.42, 189, 2, 0)
	MovementLoopAddLocation(NPC, -93.82, -24.99, 193.92, 2, 0)
end


