--[[
	Script Name		:	grove_deer6.lua
	Script Purpose	:	Waypoint Path for grove_deer6.lua
	Script Author	:	Devn00b
	Script Date		:	08/05/2020 02:31:49 PM
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
	MovementLoopAddLocation(NPC, 667.6, -9.59, -380.12, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 696.16, -14.53, -367.23, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 679.29, -10.9, -379.18, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 669.22, -10, -385.72, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 665.25, -9.78, -374.34, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 652.35, -10.86, -371.22, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 637.43, -12, -384.04, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 655.81, -9.97, -382.59, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 650.59, -10.93, -403.77, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 665.39, -10.48, -409.15, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 667.67, -9.72, -382.37, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 665.39, -10.48, -409.15, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 650.59, -10.93, -403.77, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 655.81, -9.97, -382.59, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 637.43, -12, -384.04, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 652.35, -10.86, -371.22, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 665.25, -9.78, -374.34, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 669.22, -10, -385.72, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 679.29, -10.9, -379.18, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 696.16, -14.53, -367.23, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 667.6, -9.59, -380.12, 2, math.random(0,15))
end


