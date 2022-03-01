--[[
	Script Name		:	SpawnScripts/Neriak/RaksharBucha.lua
	Script Purpose	:	Waypoint Path for Rakshar Bucha
	Script Author	:	Cynnar
	Script Date		:	5/14/2018 12:00:00 AM
	Script Notes	:	<special-instructions>
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
	MovementLoopAddLocation(NPC, -91.48, 19.72, 4.78, 2, 5)
	MovementLoopAddLocation(NPC, -85.93, 19.72, -2.91, 2, 0)
	MovementLoopAddLocation(NPC, -85.3, 19.72, -6.1, 2, 5)
	MovementLoopAddLocation(NPC, -79.93, 19.52, -15.74, 2, 0)
	MovementLoopAddLocation(NPC, -83.8, 20.38, -17.12, 2, 5)
	MovementLoopAddLocation(NPC, -88.2, 21.7, -18.32, 2, 0)
	MovementLoopAddLocation(NPC, -88.61, 21.68, -15.42, 2, 0)
	MovementLoopAddLocation(NPC, -86.84, 21.66, -11.08, 2, 0)
	MovementLoopAddLocation(NPC, -88.68, 21.31, -7, 2, 0)
	MovementLoopAddLocation(NPC, -88.31, 21.78, -4.25, 2, 5)
	MovementLoopAddLocation(NPC, -90.07, 22.07, -2.38, 2, 0)
	MovementLoopAddLocation(NPC, -94.96, 22.03, -2.08, 2, 0)
	MovementLoopAddLocation(NPC, -96.2, 22.04, -0.39, 2, 5)
	MovementLoopAddLocation(NPC, -94.96, 22.03, -2.08, 2, 0)
	MovementLoopAddLocation(NPC, -90.07, 22.07, -2.38, 2, 0)
	MovementLoopAddLocation(NPC, -88.31, 21.78, -4.25, 2, 0)
	MovementLoopAddLocation(NPC, -88.68, 21.31, -7, 2, 0)
	MovementLoopAddLocation(NPC, -86.84, 21.66, -11.08, 2, 5)
	MovementLoopAddLocation(NPC, -88.61, 21.68, -15.42, 2, 0)
	MovementLoopAddLocation(NPC, -88.2, 21.7, -18.32, 2, 0)
	MovementLoopAddLocation(NPC, -83.8, 20.38, -17.12, 2, 0)
	MovementLoopAddLocation(NPC, -79.93, 19.52, -15.74, 2, 5)
	MovementLoopAddLocation(NPC, -85.3, 19.72, -6.1, 2, 0)
	MovementLoopAddLocation(NPC, -85.93, 19.72, -2.91, 2, 5)
	MovementLoopAddLocation(NPC, -77.56, 19.21, -10.67, 2, 5)
end


