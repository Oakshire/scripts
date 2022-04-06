--[[
	Script Name		:	loowoonla.lua
	Script Purpose	:	Waypoint Path for loowoonla.lua
	Script Author	:	Devn00b
	Script Date		:	04/10/2020 02:13:55 PM
	Script Notes	:	Locations collected from Live
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
end

function respawn(NPC)
		spawn(NPC)
		end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 673.87, -17.95, 193.59, 2, 0)
	MovementLoopAddLocation(NPC, 680.77, -19.28, 191.96, 2, 0)
	MovementLoopAddLocation(NPC, 679.3, -19.37, 187.84, 2, 0)
	MovementLoopAddLocation(NPC, 610.55, -15.73, 204.39, 2, 0)
	MovementLoopAddLocation(NPC, 610.83, -16.46, 210.65, 2, 0)
	MovementLoopAddLocation(NPC, 673.56, -17.95, 193.43, 2, 0)
	MovementLoopAddLocation(NPC, 673.73, -17.95, 193.1, 2, 0)
	MovementLoopAddLocation(NPC, 643.87, -17.95, 202.22, 2, 0)
	MovementLoopAddLocation(NPC, 627.89, -17.14, 206.89, 2, 0)
	MovementLoopAddLocation(NPC, 611.38, -16.46, 211.17, 2, 0)
	MovementLoopAddLocation(NPC, 610.28, -15.74, 204.39, 2, 0)
	MovementLoopAddLocation(NPC, 548.65, -15.26, 212.37, 2, 0)
	MovementLoopAddLocation(NPC, 549.57, -9.98, 164.3, 2, 0)
	MovementLoopAddLocation(NPC, 547.37, -10.5, 153.68, 2, 0)
	MovementLoopAddLocation(NPC, 509.28, -10.93, 147.02, 2, 0)
	MovementLoopAddLocation(NPC, 490.05, -11.41, 143.3, 2, 0)
	MovementLoopAddLocation(NPC, 434.73, -11.61, 114.07, 2, 8)
	MovementLoopAddLocation(NPC, 490.05, -11.41, 143.3, 2, 0)
	MovementLoopAddLocation(NPC, 509.28, -10.93, 147.02, 2, 0)
	MovementLoopAddLocation(NPC, 547.37, -10.5, 153.68, 2, 0)
	MovementLoopAddLocation(NPC, 549.57, -9.98, 164.3, 2, 0)
	MovementLoopAddLocation(NPC, 548.65, -15.26, 212.37, 2, 0)
	MovementLoopAddLocation(NPC, 610.28, -15.74, 204.39, 2, 0)
	MovementLoopAddLocation(NPC, 611.38, -16.46, 211.17, 2, 0)
	MovementLoopAddLocation(NPC, 627.89, -17.14, 206.89, 2, 0)
	MovementLoopAddLocation(NPC, 643.87, -17.95, 202.22, 2, 0)
	MovementLoopAddLocation(NPC, 673.73, -17.95, 193.1, 2, 0)
	MovementLoopAddLocation(NPC, 673.56, -17.95, 193.43, 2, 0)
	MovementLoopAddLocation(NPC, 610.83, -16.46, 210.65, 2, 0)
	MovementLoopAddLocation(NPC, 610.55, -15.73, 204.39, 2, 0)
	MovementLoopAddLocation(NPC, 679.3, -19.37, 187.84, 2, 0)
	MovementLoopAddLocation(NPC, 680.77, -19.28, 191.96, 2, 0)
	MovementLoopAddLocation(NPC, 673.87, -17.95, 193.59, 2, 0)
end




