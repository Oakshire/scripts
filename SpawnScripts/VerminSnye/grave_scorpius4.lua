--[[
	Script Name		:	grave_scorpius4.lua
	Script Purpose	:	Waypoint Path for grave_scorpius4.lua
	Script Author	:	Devn00b
	Script Date		:	06/26/2020 03:42:38 PM
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
	MovementLoopAddLocation(NPC, 205.71, -7, -120.17, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 223.11, -6.74, -104.29, 2, 0)
	MovementLoopAddLocation(NPC, 222.92, -6.32, -82.96, 2, 0)
	MovementLoopAddLocation(NPC, 218.26, -6.78, -76.82, 2, 0)
	MovementLoopAddLocation(NPC, 209.65, -6.8, -79.71, 2, 0)
	MovementLoopAddLocation(NPC, 207.76, -7.09, -90.04, 2, 0)
	MovementLoopAddLocation(NPC, 198.36, -7.08, -90.62, 2, 0)
	MovementLoopAddLocation(NPC, 197.86, -6.92, -54.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 198.36, -7.08, -90.62, 2, 0)
	MovementLoopAddLocation(NPC, 207.76, -7.09, -90.04, 2, 0)
	MovementLoopAddLocation(NPC, 209.65, -6.8, -79.71, 2, 0)
	MovementLoopAddLocation(NPC, 218.26, -6.78, -76.82, 2, 0)
	MovementLoopAddLocation(NPC, 222.92, -6.32, -82.96, 2, 0)
	MovementLoopAddLocation(NPC, 223.11, -6.74, -104.29, 2, 0)
	MovementLoopAddLocation(NPC, 205.71, -7, -120.17, 2, math.random(0,10))
end


