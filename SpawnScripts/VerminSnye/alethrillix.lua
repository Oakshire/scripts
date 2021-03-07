--[[
	Script Name		:	alethrillix.lua
	Script Purpose	:	Waypoint Path for alethrillix.lua
	Script Author	:	Devn00b
	Script Date		:	06/19/2020 01:54:00 AM
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
	MovementLoopAddLocation(NPC, 65.65, 0, -18.4, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 71.22, 0.03, -17.3, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 71.33, 0, -19.84, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 68.57, 0.03, -20.26, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 65.93, 0.01, -16.57, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 68.57, 0.03, -20.26, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 71.33, 0, -19.84, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 71.22, 0.03, -17.3, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 65.65, 0, -18.4, 2, math.random(0,25))
end


