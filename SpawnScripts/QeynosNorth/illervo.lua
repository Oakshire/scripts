--[[
	Script Name		:	illervo.lua
	Script Purpose	:	Waypoint Path for illervo.lua
	Script Author	:	Devn00b
	Script Date		:	04/15/2020 05:24:14 PM
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
	if math.random(0, 100) <= 25 then
		FaceTarget(NPC, Spawn)
		GenericGuardHail(NPC, Spawn)
		CheckFaction(NPC, Spawn, "Qeynos")
		
	else
		CheckFaction(NPC, Spawn, "Qeynos")
	end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		GenericGuardHail(NPC, Spawn)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 382.12, -20.93, 124.14, 2, 30)
	MovementLoopAddLocation(NPC, 345.84, -21.5, 63.07, 2, 0)
	MovementLoopAddLocation(NPC, 299.8, -21.23, 3.77, 2, 0)
	MovementLoopAddLocation(NPC, 264.05, -21.48, -18.2, 2, 0)
	MovementLoopAddLocation(NPC, 209.12, -21.72, -22.84, 2, 15)
	MovementLoopAddLocation(NPC, 264.05, -21.48, -18.2, 2, 0)
	MovementLoopAddLocation(NPC, 299.8, -21.23, 3.77, 2, 0)
	MovementLoopAddLocation(NPC, 345.84, -21.5, 63.07, 2, 0)
	MovementLoopAddLocation(NPC, 382.12, -20.93, 124.14, 2, 30)
end


