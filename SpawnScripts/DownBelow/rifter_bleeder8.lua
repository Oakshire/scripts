--[[
	Script Name		:	rifter_bleeder8.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder8.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 04:40:10 PM
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
	MovementLoopAddLocation(NPC, -171.31, 1.17, -117.2, 2, math.random(0,5))
	--New waypoints, redirecting spawn from walking down the hall. 
	MovementLoopAddLocation(NPC, -178.31, 1.17, -122.2, 2, math.random(0,5)) 
	MovementLoopAddLocation(NPC, -173.36, 1.17, -124.51, 2, math.random(0,5)) 
	MovementLoopAddLocation(NPC, -181.59, 1.17, -118.98, 2, math.random(0,5))
	--End new waypoints
	--MovementLoopAddLocation(NPC, -170.4, -0.3, -131.48, 2, math.random(0,5))
	--MovementLoopAddLocation(NPC, -210.87, -0.3, -132.07, 2, math.random(0,5))
	--MovementLoopAddLocation(NPC, -170.4, -0.3, -131.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -171.31, 1.17, -117.2, 2, math.random(0,5))
end


