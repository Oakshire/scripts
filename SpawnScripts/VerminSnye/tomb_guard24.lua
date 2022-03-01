--[[
	Script Name		:	tomb_guard24.lua
	Script Purpose	:	Waypoint Path for tomb_guard24.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 10:14:52 PM
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
	MovementLoopAddLocation(NPC, 170.34, -2.03, -209.09, 2, 0)
	MovementLoopAddLocation(NPC, 174.64, -1.41, -207.97, 2, 0)
	MovementLoopAddLocation(NPC, 178.88, -0.79, -204.68, 2, 0)
	MovementLoopAddLocation(NPC, 180.94, 0, -200.41, 2, 0)
	MovementLoopAddLocation(NPC, 180.98, 0.09, -195.79, 2, 0)
	MovementLoopAddLocation(NPC, 179.11, -0.61, -203.89, 2, 0)
	MovementLoopAddLocation(NPC, 176.45, -1.27, -208.12, 2, 0)
	MovementLoopAddLocation(NPC, 172.47, -1.84, -210.04, 2, 0)
	MovementLoopAddLocation(NPC, 167.92, -2.38, -210.53, 2, 0)
	MovementLoopAddLocation(NPC, 163.48, -3.1, -208.87, 2, 0)
	MovementLoopAddLocation(NPC, 160.35, -3.74, -205.91, 2, 0)
	MovementLoopAddLocation(NPC, 157.98, -4.36, -201.5, 2, 0)
	MovementLoopAddLocation(NPC, 157.67, -4.96, -196.92, 2, 0)
	MovementLoopAddLocation(NPC, 158.72, -5.71, -191.19, 2, 0)
	MovementLoopAddLocation(NPC, 162.22, -6.32, -188.41, 2, 0)
	MovementLoopAddLocation(NPC, 167.74, -6.94, -186.83, 2, 0)
	MovementLoopAddLocation(NPC, 168.97, -6.9, -182.48, 2, 0)
	MovementLoopAddLocation(NPC, 167.74, -6.94, -186.83, 2, 0)
	MovementLoopAddLocation(NPC, 162.22, -6.32, -188.41, 2, 0)
	MovementLoopAddLocation(NPC, 158.72, -5.71, -191.19, 2, 0)
	MovementLoopAddLocation(NPC, 157.67, -4.96, -196.92, 2, 0)
	MovementLoopAddLocation(NPC, 157.98, -4.36, -201.5, 2, 0)
	MovementLoopAddLocation(NPC, 160.35, -3.74, -205.91, 2, 0)
	MovementLoopAddLocation(NPC, 163.48, -3.1, -208.87, 2, 0)
	MovementLoopAddLocation(NPC, 167.92, -2.38, -210.53, 2, 0)
	MovementLoopAddLocation(NPC, 172.47, -1.84, -210.04, 2, 0)
	MovementLoopAddLocation(NPC, 176.45, -1.27, -208.12, 2, 0)
	MovementLoopAddLocation(NPC, 179.11, -0.61, -203.89, 2, 0)
	MovementLoopAddLocation(NPC, 180.98, 0.09, -195.79, 2, 0)
	MovementLoopAddLocation(NPC, 180.94, 0, -200.41, 2, 0)
	MovementLoopAddLocation(NPC, 178.88, -0.79, -204.68, 2, 0)
	MovementLoopAddLocation(NPC, 174.64, -1.41, -207.97, 2, 0)
	MovementLoopAddLocation(NPC, 170.34, -2.03, -209.09, 2, 0)
end


