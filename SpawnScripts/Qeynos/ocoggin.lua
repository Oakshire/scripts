--[[
	Script Name		:	ocoggin.lua
	Script Purpose	:	Waypoint Path for ocoggin.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 06:22:22 PM
	Script Notes	:	Locations collected from Live
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericRaceCheckHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericRaceCheckCallout(NPC, Spawn, faction)
    end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 454.21, -11.27, 119.32, 2, 0)
	MovementLoopAddLocation(NPC, 462.96, -11.34, 117.26, 2, 0)
	MovementLoopAddLocation(NPC, 473.17, -11.51, 115.77, 2, 0)
	MovementLoopAddLocation(NPC, 481.48, -11.52, 116.12, 2, 0)
	MovementLoopAddLocation(NPC, 483.61, -11.53, 117.36, 2, 0)
	MovementLoopAddLocation(NPC, 487.02, -11.53, 120.96, 2, 0)
	MovementLoopAddLocation(NPC, 488.53, -11.53, 125.73, 2, 0)
	MovementLoopAddLocation(NPC, 487.84, -11.52, 130.97, 2, 0)
	MovementLoopAddLocation(NPC, 486.34, -11.5, 136.27, 2, 0)
	MovementLoopAddLocation(NPC, 486.77, -11.42, 140.74, 2, 0)
	MovementLoopAddLocation(NPC, 491.78, -11.49, 143.11, 2, 0)
	MovementLoopAddLocation(NPC, 496.37, -11.77, 144.14, 2, 0)
	MovementLoopAddLocation(NPC, 541.07, -10.47, 150.54, 2, 0)
	MovementLoopAddLocation(NPC, 622.68, -12.29, 146.78, 2, 2)
	MovementLoopAddLocation(NPC, 610.46, -11.65, 159.89, 2, 2)
	MovementLoopAddLocation(NPC, 610.46, -11.65, 159.89, 2, 8,"EcologyEmotes")
	MovementLoopAddLocation(NPC,605.04, -11.99, 148.63, 2, 0)
	MovementLoopAddLocation(NPC, 541.07, -10.47, 150.54, 2, 0)
	MovementLoopAddLocation(NPC, 496.37, -11.77, 144.14, 2, 0)
	MovementLoopAddLocation(NPC, 491.78, -11.49, 143.11, 2, 0)
	MovementLoopAddLocation(NPC, 486.77, -11.42, 140.74, 2, 0)
	MovementLoopAddLocation(NPC, 486.34, -11.5, 136.27, 2, 0)
	MovementLoopAddLocation(NPC, 487.84, -11.52, 130.97, 2, 0)
	MovementLoopAddLocation(NPC, 488.53, -11.53, 125.73, 2, 0)
	MovementLoopAddLocation(NPC, 487.02, -11.53, 120.96, 2, 0)
	MovementLoopAddLocation(NPC, 483.61, -11.53, 117.36, 2, 0)
	MovementLoopAddLocation(NPC, 481.48, -11.52, 116.12, 2, 0)
	MovementLoopAddLocation(NPC, 473.17, -11.51, 115.77, 2, 0)
	MovementLoopAddLocation(NPC, 462.96, -11.34, 117.26, 2, 0)
	MovementLoopAddLocation(NPC, 454.21, -11.27, 119.32, 2, 2)	
	MovementLoopAddLocation(NPC, 454.21, -11.27, 119.32, 2, 8,"EcologyEmotes")
end


