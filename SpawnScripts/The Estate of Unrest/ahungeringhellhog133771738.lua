--[[
	Script Name		:	ahungeringhellhound.lua
	Script Purpose	:	Waypoint Path for ahungeringhellhound.lua
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/03/2021 01:24:23 PM
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
	MovementLoopAddLocation(NPC, 100.02, 0.25, 243.7, 2, 14)
	MovementLoopAddLocation(NPC, 88.7, 0.01, 242.51, 2, 14)
	MovementLoopAddLocation(NPC, 92.24, 0, 233.83, 2, 14)
	MovementLoopAddLocation(NPC, 92.42, 0, 249.67, 2, 14)
	MovementLoopAddLocation(NPC, 90.24, 0, 243.44, 2, 14)
	MovementLoopAddLocation(NPC, 96.98, 0, 241.57, 2, 14)
end
