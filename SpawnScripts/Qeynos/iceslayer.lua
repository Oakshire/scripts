--[[
	Script Name		:	iceslayer.lua
	Script Purpose	:	Waypoint Path for iceslayer.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 07:24:41 PM
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
	MovementLoopAddLocation(NPC, 541.45, -3.5, 136.91, 2, 0)
	MovementLoopAddLocation(NPC, 526.93, -3.5, 136.14, 2, 0)
	MovementLoopAddLocation(NPC, 510.52, -3.48, 134.38, 2, 0)
	MovementLoopAddLocation(NPC, 511.79, -3.48, 125.96, 2, 0)
	MovementLoopAddLocation(NPC, 527.66, -3.5, 128.38, 2, 0)
	MovementLoopAddLocation(NPC, 542.06, -3.5, 128.03, 2, 0)
	MovementLoopAddLocation(NPC, 542.42, -5.55, 121.07, 2, 0)
	MovementLoopAddLocation(NPC, 552.51, -5.55, 121.16, 2, 0)
	MovementLoopAddLocation(NPC, 552.24, -3.5, 127.63, 2, 0)
	MovementLoopAddLocation(NPC, 566.13, -3.5, 128.07, 2, 0)
	MovementLoopAddLocation(NPC, 582.44, -3.48, 125.97, 2, 0)
	MovementLoopAddLocation(NPC, 583.6, -3.48, 135.08, 2, 0)
	MovementLoopAddLocation(NPC, 567.53, -3.5, 136.55, 2, 0)
	MovementLoopAddLocation(NPC, 553.23, -3.5, 136.78, 2, 0)
	MovementLoopAddLocation(NPC, 567.53, -3.5, 136.55, 2, 0)
	MovementLoopAddLocation(NPC, 583.6, -3.48, 135.08, 2, 0)
	MovementLoopAddLocation(NPC, 582.44, -3.48, 125.97, 2, 0)
	MovementLoopAddLocation(NPC, 566.13, -3.5, 128.07, 2, 0)
	MovementLoopAddLocation(NPC, 552.24, -3.5, 127.63, 2, 0)
	MovementLoopAddLocation(NPC, 552.51, -5.55, 121.16, 2, 0)
	MovementLoopAddLocation(NPC, 542.42, -5.55, 121.07, 2, 0)
	MovementLoopAddLocation(NPC, 542.06, -3.5, 128.03, 2, 0)
	MovementLoopAddLocation(NPC, 527.66, -3.5, 128.38, 2, 0)
	MovementLoopAddLocation(NPC, 511.79, -3.48, 125.96, 2, 0)
	MovementLoopAddLocation(NPC, 510.52, -3.48, 134.38, 2, 0)
	MovementLoopAddLocation(NPC, 526.93, -3.5, 136.14, 2, 0)
	MovementLoopAddLocation(NPC, 541.45, -3.5, 136.91, 2, 0)
end


