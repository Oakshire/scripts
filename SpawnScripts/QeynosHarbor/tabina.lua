--[[
	Script Name		:	soothsayertabina.lua
	Script Purpose	:	Waypoint Path for soothsayertabina.lua
	Script Author	:	Devn00b
	Script Date		:	04/09/2020 01:54:12 AM
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
	MovementLoopAddLocation(NPC, 839.82, -25.47, -0.55, 2, 45)
	MovementLoopAddLocation(NPC, 848.38, -25.46, 13.55, 2, 0)
	MovementLoopAddLocation(NPC, 858.11, -25.47, 22.81, 2, 0)
	MovementLoopAddLocation(NPC, 862.36, -25.51, 34.89, 2, 0)
	MovementLoopAddLocation(NPC, 881.65, -25.43, 35, 2, 0)
	MovementLoopAddLocation(NPC, 893.92, -25.48, 29.49, 2, 0)
	MovementLoopAddLocation(NPC, 900.82, -25.43, 6.34, 2, 0)
	MovementLoopAddLocation(NPC, 899.15, -23.46, -35.74, 2, 0)
	MovementLoopAddLocation(NPC, 892.55, -25.38, -58.9, 2, 0)
	MovementLoopAddLocation(NPC, 812.24, -20.4, -59.15, 2, 0)
	MovementLoopAddLocation(NPC, 792.62, -21.09, -57.06, 2, 0)
	MovementLoopAddLocation(NPC, 775.75, -20.64, -24.43, 2, 60)
	MovementLoopAddLocation(NPC, 792.62, -21.09, -57.06, 2, 0)
	MovementLoopAddLocation(NPC, 812.24, -20.4, -59.15, 2, 0)
	MovementLoopAddLocation(NPC, 892.55, -25.38, -58.9, 2, 0)
	MovementLoopAddLocation(NPC, 899.15, -23.46, -35.74, 2, 0)
	MovementLoopAddLocation(NPC, 900.82, -25.43, 6.34, 2, 0)
	MovementLoopAddLocation(NPC, 893.92, -25.48, 29.49, 2, 0)
	MovementLoopAddLocation(NPC, 881.65, -25.43, 35, 2, 0)
	MovementLoopAddLocation(NPC, 862.36, -25.51, 34.89, 2, 0)
	MovementLoopAddLocation(NPC, 858.11, -25.47, 22.81, 2, 0)
	MovementLoopAddLocation(NPC, 848.38, -25.46, 13.55, 2, 0)
	MovementLoopAddLocation(NPC, 839.82, -25.47, -0.55, 2, 45)
end


