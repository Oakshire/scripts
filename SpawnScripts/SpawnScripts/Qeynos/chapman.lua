--[[
	Script Name		:	chapman.lua
	Script Purpose	:	Waypoint Path for chapman.lua
	Script Author	:	Devn00b
	Script Date		:	04/10/2020 12:23:48 PM
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
	MovementLoopAddLocation(NPC, 413.02, -20.94, 157.49, 2, 0)
	MovementLoopAddLocation(NPC, 431.34, -20.77, 177.7, 2, 0)
	MovementLoopAddLocation(NPC, 452.04, -21.98, 240.54, 2, 0)
	MovementLoopAddLocation(NPC, 436.42, -21.74, 269.85, 2, 0)
	MovementLoopAddLocation(NPC, 447.66, -21.76, 259.01, 2, 0)
	MovementLoopAddLocation(NPC, 457.88, -22.22, 236.4, 2, 0)
	MovementLoopAddLocation(NPC, 505.74, -19.56, 242.9, 2, 0)
	MovementLoopAddLocation(NPC, 578.81, -17.93, 242.68, 2, 0)
	MovementLoopAddLocation(NPC, 663.88, -19.39, 224.79, 2, 0)
	MovementLoopAddLocation(NPC, 686.32, -19.52, 217.22, 2, 0)
	MovementLoopAddLocation(NPC, 679.24, -19.42, 184.53, 2, 0)
	MovementLoopAddLocation(NPC, 601.85, -15.83, 204.98, 2, 0)
	MovementLoopAddLocation(NPC, 547, -15.41, 209.65, 2, 0)
	MovementLoopAddLocation(NPC, 497.18, -16.39, 203.07, 2, 0)
	MovementLoopAddLocation(NPC, 413, -20.94, 157.01, 2, 0)
	MovementLoopAddLocation(NPC, 497.18, -16.39, 203.07, 2, 0)
	MovementLoopAddLocation(NPC, 547, -15.41, 209.65, 2, 0)
	MovementLoopAddLocation(NPC, 601.85, -15.83, 204.98, 2, 0)
	MovementLoopAddLocation(NPC, 679.24, -19.42, 184.53, 2, 0)
	MovementLoopAddLocation(NPC, 686.32, -19.52, 217.22, 2, 0)
	MovementLoopAddLocation(NPC, 663.88, -19.39, 224.79, 2, 0)
	MovementLoopAddLocation(NPC, 578.81, -17.93, 242.68, 2, 0)
	MovementLoopAddLocation(NPC, 505.74, -19.56, 242.9, 2, 0)
	MovementLoopAddLocation(NPC, 457.88, -22.22, 236.4, 2, 0)
	MovementLoopAddLocation(NPC, 447.66, -21.76, 259.01, 2, 0)
	MovementLoopAddLocation(NPC, 436.42, -21.74, 269.85, 2, 0)
	MovementLoopAddLocation(NPC, 452.04, -21.98, 240.54, 2, 0)
	MovementLoopAddLocation(NPC, 431.34, -20.77, 177.7, 2, 0)
	MovementLoopAddLocation(NPC, 413.02, -20.94, 157.49, 2, 0)
end


