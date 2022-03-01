--[[
	Script Name		:	a_duck4.lua
	Script Purpose	:	Waypoint Path for a_duck4.lua
	Script Author	:	Devn00b
	Script Date		:	08/04/2020 04:01:01 PM
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
	MovementLoopAddLocation(NPC, 743.13, -17.29, -320.91, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 735.53, -17.56, -323.86, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 738.61, -22.13, -337.6, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 758.73, -21.27, -336.2, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 760.11, -17.4, -316.41, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 764.57, -17.81, -308.69, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 778.52, -17.96, -321.96, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 768.19, -22.76, -341.9, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 778.52, -17.96, -321.96, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 764.57, -17.81, -308.69, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 760.11, -17.4, -316.41, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 758.73, -21.27, -336.2, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 738.61, -22.13, -337.6, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 735.53, -17.56, -323.86, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 743.13, -17.29, -320.91, 2, math.random(0,3))
end


