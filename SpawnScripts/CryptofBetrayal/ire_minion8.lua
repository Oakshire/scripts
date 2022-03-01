--[[
	Script Name		:	ire_minion8.lua
	Script Purpose	:	Waypoint Path for ire_minion8.lua
	Script Author	:	Devn00b
	Script Date		:	05/20/2020 02:35:57 PM
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
	MovementLoopAddLocation(NPC, 138.31, 6.89, -77.92, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 138.14, 6.89, -80.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 143.8, 7.2, -77.7, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 141.2, 7.24, -80.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 140.45, 6.89, -77.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 144.41, 7.27, -78.63, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 142.93, 7.19, -77.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 141.2, 6.86, -77.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 142.93, 7.19, -77.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 144.41, 7.27, -78.63, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 140.45, 6.89, -77.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 141.2, 7.24, -80.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 143.8, 7.2, -77.7, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 138.14, 6.89, -80.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 138.31, 6.89, -77.92, 2, math.random(0,10))
end


