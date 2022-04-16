--[[
	Script Name		:	Warland.lua
	Script Purpose	:	Waypoint Path for Warland.lua
	Script Author	:	Auto Generated
	Script Date		:	04/08/2020 10:30:14 PM
	Script Notes	:	Locations collected from Live
--]]



dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
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


function respawn(NPC)
	spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 705.82, -20.64, -22.54, 2, 0)
	MovementLoopAddLocation(NPC, 740.93, -21.44, -22.18, 2, 0)
	MovementLoopAddLocation(NPC, 757.61, -20.88, -35.3, 2, 0)
	MovementLoopAddLocation(NPC, 764.83, -21.84, -55.37, 2, 0)
	MovementLoopAddLocation(NPC, 727.1, -21.24, -63.05, 2, 0)
	MovementLoopAddLocation(NPC, 710.11, -21.06, -83.53, 2, 20)
	MovementLoopAddLocation(NPC, 727.1, -21.24, -63.05, 2, 0)
	MovementLoopAddLocation(NPC, 764.83, -21.84, -55.37, 2, 0)
	MovementLoopAddLocation(NPC, 757.61, -20.88, -35.3, 2, 0)
	MovementLoopAddLocation(NPC, 740.93, -21.44, -22.18, 2, 0)
	MovementLoopAddLocation(NPC, 705.82, -20.64, -22.54, 2, 0)
end


