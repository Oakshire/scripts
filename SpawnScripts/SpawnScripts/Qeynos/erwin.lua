--[[
	Script Name		:	erwin.lua
	Script Purpose	:	Waypoint Path for erwin.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 02:39:02 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
		spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 698.34, -19.9, 131.15, 2, 0)
	MovementLoopAddLocation(NPC, 677.48, -21.02, 142.28, 2, 0)
	MovementLoopAddLocation(NPC, 680.55, -20.76, 155.63, 2, 0)
	MovementLoopAddLocation(NPC, 704.73, -19.48, 175.59, 2, 0)
	MovementLoopAddLocation(NPC, 703.89, -19.54, 189.78, 2, 0)
	MovementLoopAddLocation(NPC, 692.1, -19.52, 195.98, 2, 0)
	MovementLoopAddLocation(NPC, 679.77, -19.76, 221.54, 2, 0)
	MovementLoopAddLocation(NPC, 671.72, -19.66, 223.75, 2, 0)
	MovementLoopAddLocation(NPC, 686.27, -20.49, 267.75, 2, 30)
	MovementLoopAddLocation(NPC, 671.72, -19.66, 223.75, 2, 0)
	MovementLoopAddLocation(NPC, 679.77, -19.76, 221.54, 2, 0)
	MovementLoopAddLocation(NPC, 692.1, -19.52, 195.98, 2, 0)
	MovementLoopAddLocation(NPC, 703.89, -19.54, 189.78, 2, 0)
	MovementLoopAddLocation(NPC, 704.73, -19.48, 175.59, 2, 0)
	MovementLoopAddLocation(NPC, 680.55, -20.76, 155.63, 2, 0)
	MovementLoopAddLocation(NPC, 677.48, -21.02, 142.28, 2, 0)
	MovementLoopAddLocation(NPC, 698.34, -19.9, 131.15, 2, 30)
end


