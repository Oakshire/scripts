--[[
	Script Name		:	Nominus.lua
	Script Purpose	:	Waypoint Path for Nominus.lua
	Script Author	:	Auto Generated
	Script Date		:	04/24/2020 09:47:23 PM
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
	MovementLoopAddLocation(NPC, -113.4, -24.98, 214.44, 2, 0)
	MovementLoopAddLocation(NPC, -126.88, -24.97, 219.25, 2, 0)
	MovementLoopAddLocation(NPC, -145.85, -30.47, 211.91, 2, 0)
	MovementLoopAddLocation(NPC, -138.62, -35.2, 171.68, 2, 0)
	MovementLoopAddLocation(NPC, -150.64, -35.2, 170.25, 2, 0)
	MovementLoopAddLocation(NPC, -161.52, -46.74, 204.74, 2, 0)
	MovementLoopAddLocation(NPC, -168.39, -46.82, 202.5, 2, 0)
	MovementLoopAddLocation(NPC, -163.73, -57.15, 170.15, 2, 0)
	MovementLoopAddLocation(NPC, -168.39, -46.82, 202.5, 2, 0)
	MovementLoopAddLocation(NPC, -161.52, -46.74, 204.74, 2, 0)
	MovementLoopAddLocation(NPC, -150.64, -35.2, 170.25, 2, 0)
	MovementLoopAddLocation(NPC, -138.62, -35.2, 171.68, 2, 0)
	MovementLoopAddLocation(NPC, -145.85, -30.47, 211.91, 2, 0)
	MovementLoopAddLocation(NPC, -126.88, -24.97, 219.25, 2, 0)
	MovementLoopAddLocation(NPC, -113.4, -24.98, 214.44, 2, 0)
end


