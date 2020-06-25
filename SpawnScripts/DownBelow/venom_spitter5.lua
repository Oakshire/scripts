--[[
	Script Name		:	venom_spitter5.lua
	Script Purpose	:	Waypoint Path for venom_spitter5.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 01:52:48 PM
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
	MovementLoopAddLocation(NPC, -106.89, 0, -199.92, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -110.9, 0, -205.49, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -98.63, 0, -203.12, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -102.8, 0, -199.78, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -110.26, 0, -200.26, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -106.71, 0, -205.45, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.81, 0, -202.65, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -111.89, 0, -204.94, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -114.94, 0, -199.13, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -105.23, 0, -208.59, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -96.1, 0, -208.86, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -95.93, 0, -206.72, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -102.56, 0, -208.85, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -104.47, 0, -207.16, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -104.39, 0, -199.36, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -106.43, 0, -202.29, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -111.62, 0, -206.12, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -114.57, 0, -201.62, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -111.4, 0, -206.52, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -104.94, 0, -204.56, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -110.32, 0, -202.97, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -105.86, 0, -199.78, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -110.32, 0, -202.97, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -104.94, 0, -204.56, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -111.4, 0, -206.52, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -114.57, 0, -201.62, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -111.62, 0, -206.12, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -106.43, 0, -202.29, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -104.39, 0, -199.36, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -104.47, 0, -207.16, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -102.56, 0, -208.85, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -95.93, 0, -206.72, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -96.1, 0, -208.86, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -105.23, 0, -208.59, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -114.94, 0, -199.13, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -111.89, 0, -204.94, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.81, 0, -202.65, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -106.71, 0, -205.45, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -110.26, 0, -200.26, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -102.8, 0, -199.78, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -98.63, 0, -203.12, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -110.9, 0, -205.49, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -106.89, 0, -199.92, 2, math.random(0,20))
end


