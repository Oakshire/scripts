--[[
	Script Name		:	ire_minion9.lua
	Script Purpose	:	Waypoint Path for ire_minion9.lua
	Script Author	:	Devn00b
	Script Date		:	05/20/2020 02:40:38 PM
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
	MovementLoopAddLocation(NPC, 143.94, 7.14, -77.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 138.68, 6.89, -80.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 138.17, 6.89, -77.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 144.28, 7.02, -80.02, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 140.34, 6.88, -77.17, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 140.16, 7.24, -79.83, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 141.54, 6.98, -78.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 142.77, 7.24, -79.8, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 142.61, 7.09, -77.85, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 139.54, 6.89, -78.02, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 141.28, 7.89, -81.2, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 139.54, 6.89, -78.02, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 142.61, 7.09, -77.85, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 142.77, 7.24, -79.8, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 141.54, 6.98, -78.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 140.16, 7.24, -79.83, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 140.34, 6.88, -77.17, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 144.28, 7.02, -80.02, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 138.17, 6.89, -77.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 138.68, 6.89, -80.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 143.94, 7.14, -77.51, 2, math.random(0,10))
end


