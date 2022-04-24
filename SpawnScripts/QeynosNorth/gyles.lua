--[[
	Script Name		:	icebear.lua
	Script Purpose	:	Waypoint Path for icebear.lua
	Script Author	:	Devn00b
	Script Date		:	04/15/2020 02:45:21 PM
	Script Notes	:	Locations collected from Live
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC, Spawn)
		CheckFaction(NPC, Spawn, "Qeynos")
	end


function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		GenericGuardHail(NPC, Spawn)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 337.5, -21.62, -17.84, 2, 0)
	MovementLoopAddLocation(NPC, 327.95, -21.47, -18.3, 2, 0)
	MovementLoopAddLocation(NPC, 301.42, -21.15, 2.22, 2, 0)
	MovementLoopAddLocation(NPC, 307.82, -21.28, 12.39, 2, 0)
	MovementLoopAddLocation(NPC, 316.31, -21.35, 25.73, 2, 0)
	MovementLoopAddLocation(NPC, 328.54, -21.46, 34.69, 2, 0)
	MovementLoopAddLocation(NPC, 342.6, -21.08, 47.69, 2, 0)
	MovementLoopAddLocation(NPC, 351.56, -21.1, 62.44, 2, 0)
	MovementLoopAddLocation(NPC, 356.53, -20.81, 86.48, 2, 0)
	MovementLoopAddLocation(NPC, 365.55, -20.84, 100.34, 2, 0)
	MovementLoopAddLocation(NPC, 383.27, -20.98, 123.01, 2, 0)
	MovementLoopAddLocation(NPC, 391.04, -21.3, 133.4, 2, 0)
	MovementLoopAddLocation(NPC, 386.84, -20.7, 119.23, 2, 0)
	MovementLoopAddLocation(NPC, 412.2, -13.89, 65.74, 2, 0)
	MovementLoopAddLocation(NPC, 409.82, -13.77, 57.53, 2, 0)
	MovementLoopAddLocation(NPC, 400.59, -14.47, 33.02, 2, 0)
	MovementLoopAddLocation(NPC, 393.11, -15.81, 12.92, 2, 0)
	MovementLoopAddLocation(NPC, 393.69, -17.09, -23.72, 2, 0)
	MovementLoopAddLocation(NPC, 369.04, -20.37, -19.09, 2, 0)
	MovementLoopAddLocation(NPC, 338.76, -21.66, -18.13, 2, 0)
end


