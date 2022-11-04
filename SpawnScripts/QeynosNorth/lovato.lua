--[[
	Script Name		:	lovato.lua
	Script Purpose	:	Waypoint Path for lovato.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 09:59:23 PM
	Script Notes	:	Locations collected from Live
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
    waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC, Spawn)
    NonCitizen(NPC,Spawn)    
	if math.random(0, 100) <= 25 and GetFactionAmount(Spawn,11)> 20000 then
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
	MovementLoopAddLocation(NPC, 416.76, -19.18, -272.59, 2, 0)
	MovementLoopAddLocation(NPC, 397.39, -17.69, -271.71, 2, 0)
	MovementLoopAddLocation(NPC, 386.62, -17.48, -271.02, 2, 0)
	MovementLoopAddLocation(NPC, 380.75, -17.59, -270.53, 2, 0)
	MovementLoopAddLocation(NPC, 335.97, -18.48, -229.93, 2, 0)
	MovementLoopAddLocation(NPC, 322.21, -22.43, -187.91, 2, 0)
	MovementLoopAddLocation(NPC, 300.86, -22.74, -165.58, 2, 0)
	MovementLoopAddLocation(NPC, 286.91, -18.84, -146.59, 2, 0)
	MovementLoopAddLocation(NPC, 285.04, -18.75, -138.03, 2, 0)
	MovementLoopAddLocation(NPC, 294.8, -19.05, -123.14, 2, 0)
	MovementLoopAddLocation(NPC, 292.38, -18.93, -111.75, 2, 0)
	MovementLoopAddLocation(NPC, 270.69, -18.62, -95.31, 2, 0)
	MovementLoopAddLocation(NPC, 266.85, -18.71, -89.95, 2, 0)
	MovementLoopAddLocation(NPC, 260.01, -20.43, -56.98, 2, 0)
	MovementLoopAddLocation(NPC, 262.42, -21.01, -30.97, 2, 0)
	MovementLoopAddLocation(NPC, 274.17, -21.18, -33.17, 2, 0)
	MovementLoopAddLocation(NPC, 283.95, -20.98, -36.93, 2, 0)
	MovementLoopAddLocation(NPC, 305.16, -21.39, -42.51, 2, 0)
	MovementLoopAddLocation(NPC, 311.5, -21.4, -37.18, 2, 0)
	MovementLoopAddLocation(NPC, 322.24, -21.45, -24.11, 2, 0)
	MovementLoopAddLocation(NPC, 311.5, -21.4, -37.18, 2, 0)
	MovementLoopAddLocation(NPC, 305.16, -21.39, -42.51, 2, 0)
	MovementLoopAddLocation(NPC, 283.95, -20.98, -36.93, 2, 0)
	MovementLoopAddLocation(NPC, 274.17, -21.18, -33.17, 2, 0)
	MovementLoopAddLocation(NPC, 262.42, -21.01, -30.97, 2, 0)
	MovementLoopAddLocation(NPC, 260.01, -20.43, -56.98, 2, 0)
	MovementLoopAddLocation(NPC, 266.85, -18.71, -89.95, 2, 0)
	MovementLoopAddLocation(NPC, 270.69, -18.62, -95.31, 2, 0)
	MovementLoopAddLocation(NPC, 292.38, -18.93, -111.75, 2, 0)
	MovementLoopAddLocation(NPC, 294.8, -19.05, -123.14, 2, 0)
	MovementLoopAddLocation(NPC, 285.04, -18.75, -138.03, 2, 0)
	MovementLoopAddLocation(NPC, 286.91, -18.84, -146.59, 2, 0)
	MovementLoopAddLocation(NPC, 300.86, -22.74, -165.58, 2, 0)
	MovementLoopAddLocation(NPC, 322.21, -22.43, -187.91, 2, 0)
	MovementLoopAddLocation(NPC, 335.97, -18.48, -229.93, 2, 0)
	MovementLoopAddLocation(NPC, 380.75, -17.59, -270.53, 2, 0)
	MovementLoopAddLocation(NPC, 386.62, -17.48, -271.02, 2, 0)
	MovementLoopAddLocation(NPC, 397.39, -17.69, -271.71, 2, 0)
	MovementLoopAddLocation(NPC, 416.76, -19.18, -272.59, 2, 0)
end


