--[[
	Script Name		:	blackcat.lua
	Script Purpose	:	Waypoint Path for blackcat.lua
	Script Author	:	Devn00b
	Script Date		:	04/13/2020 01:25:43 PM
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
	MovementLoopAddLocation(NPC, 615.56, -12.22, 144.88, 2, 30)
	MovementLoopAddLocation(NPC, 593.87, -11.18, 141.7, 2, 30)
	MovementLoopAddLocation(NPC, 590.38, -10.33, 139.65, 2, 0)
	MovementLoopAddLocation(NPC, 587.59, -10.34, 118.01, 2, 0)
	MovementLoopAddLocation(NPC, 576.39, -9.99, 119.16, 2, 0)
	MovementLoopAddLocation(NPC, 556.9, -9.99, 118.07, 2, 0)
	MovementLoopAddLocation(NPC, 533.96, -9.99, 118.41, 2, 0)
	MovementLoopAddLocation(NPC, 530.12, -9.99, 119.6, 2, 0)
	MovementLoopAddLocation(NPC, 509.88, -9.99, 118.64, 2, 0)
	MovementLoopAddLocation(NPC, 497.04, -11.27, 114.89, 2, 0)
	MovementLoopAddLocation(NPC, 493.63, -11.27, 115.43, 2, 0)
	MovementLoopAddLocation(NPC, 483.9, -11.27, 112.86, 2, 30)
	MovementLoopAddLocation(NPC, 493.63, -11.27, 115.43, 2, 0)
	MovementLoopAddLocation(NPC, 497.04, -11.27, 114.89, 2, 0)
	MovementLoopAddLocation(NPC, 509.88, -9.99, 118.64, 2, 0)
	MovementLoopAddLocation(NPC, 530.12, -9.99, 119.6, 2, 0)
	MovementLoopAddLocation(NPC, 533.96, -9.99, 118.41, 2, 0)
	MovementLoopAddLocation(NPC, 556.9, -9.99, 118.07, 2, 0)
	MovementLoopAddLocation(NPC, 576.39, -9.99, 119.16, 2, 0)
	MovementLoopAddLocation(NPC, 587.59, -10.34, 118.01, 2, 0)
	MovementLoopAddLocation(NPC, 590.38, -10.33, 139.65, 2, 0)
	MovementLoopAddLocation(NPC, 593.87, -11.18, 141.7, 2, 30)
	MovementLoopAddLocation(NPC, 615.56, -12.22, 144.88, 2, 30)
end


