--[[
	Script Name		:	Redeye.lua
	Script Purpose	:	Waypoint Path for Redeye.lua
	Script Author	:	Auto Generated
	Script Date		:	04/24/2020 10:34:22 PM
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
	MovementLoopAddLocation(NPC, -181.64, -57.33, 167.76, 2, 0)
	MovementLoopAddLocation(NPC, -162.23, -57.16, 170.5, 2, 0)
	MovementLoopAddLocation(NPC, -168.63, -46.75, 205.65, 2, 0)
	MovementLoopAddLocation(NPC, -162.59, -46.74, 206.03, 2, 0)
	MovementLoopAddLocation(NPC, -150.23, -35.2, 165.54, 2, 0)
	MovementLoopAddLocation(NPC, -162.59, -46.74, 206.03, 2, 0)
	MovementLoopAddLocation(NPC, -168.63, -46.75, 205.65, 2, 0)
	MovementLoopAddLocation(NPC, -162.23, -57.16, 170.5, 2, 0)
	MovementLoopAddLocation(NPC, -181.64, -57.33, 167.76, 2, 0)
end


