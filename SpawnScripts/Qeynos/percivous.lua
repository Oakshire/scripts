--[[
	Script Name		:	percivous.lua
	Script Purpose	:	Waypoint Path for percivous.lua
	Script Author	:	Devn00b
	Script Date		:	04/10/2020 01:16:00 PM
	Script Notes	:	Locations collected from Live
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")		
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
	MovementLoopAddLocation(NPC, 664.3, -21.16, 100.37, 2, 0)
	MovementLoopAddLocation(NPC, 668.74, -21.28, 142.24, 2, 0)
	MovementLoopAddLocation(NPC, 705.64, -19.45, 178.15, 2, 0)
	MovementLoopAddLocation(NPC, 704.05, -19.53, 192.48, 2, 0)
	MovementLoopAddLocation(NPC, 689.56, -19.52, 197.06, 2, 0)
	MovementLoopAddLocation(NPC, 677.25, -19.28, 185.9, 2, 0)
	MovementLoopAddLocation(NPC, 623.79, -16.71, 198.71, 2, 0)
	MovementLoopAddLocation(NPC, 576.8, -15.87, 207.63, 2, 0)
	MovementLoopAddLocation(NPC, 546.29, -15.38, 210.3, 2, 0)
	MovementLoopAddLocation(NPC, 546.39, -10.53, 153.1, 2, 0)
	MovementLoopAddLocation(NPC, 612.56, -12.22, 144.86, 2, 2)
	MovementLoopAddLocation(NPC, 612.56, -12.22, 144.86, 2, 6,"EcologyEmotes")	
	MovementLoopAddLocation(NPC, 546.79, -10.16, 149.02, 2, 0)
	MovementLoopAddLocation(NPC, 502.93, -11.34, 142.12, 2, 0)
	MovementLoopAddLocation(NPC, 469.59, -11.52, 133.6, 2, 3)
	MovementLoopAddLocation(NPC, 492.66, -12.73, 149.14, 2, 0)
	MovementLoopAddLocation(NPC, 469.59, -11.52, 133.6, 2, 2)	
	MovementLoopAddLocation(NPC, 469.59, -11.52, 133.6, 2, 8,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 502.93, -11.34, 142.12, 2, 0)
	MovementLoopAddLocation(NPC, 546.79, -10.16, 149.02, 2, 0)
	MovementLoopAddLocation(NPC, 612.56, -12.22, 144.86, 2, 4)
	MovementLoopAddLocation(NPC, 593.15, -11.03, 140.55, 2, 2)	
	MovementLoopAddLocation(NPC, 593.15, -11.03, 140.55, 2, 8,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 587.10, -10.35, 145.71, 2, 0)
	MovementLoopAddLocation(NPC, 546.39, -10.53, 153.1, 2, 0)
	MovementLoopAddLocation(NPC, 546.29, -15.38, 210.3, 2, 0)
	MovementLoopAddLocation(NPC, 576.8, -15.87, 207.63, 2, 0)
	MovementLoopAddLocation(NPC, 623.79, -16.71, 198.71, 2, 0)
	MovementLoopAddLocation(NPC, 677.25, -19.28, 185.9, 2, 0)
	MovementLoopAddLocation(NPC, 689.56, -19.52, 197.06, 2, 0)
	MovementLoopAddLocation(NPC, 704.05, -19.53, 192.48, 2, 0)
	MovementLoopAddLocation(NPC, 705.64, -19.45, 178.15, 2, 0)
	MovementLoopAddLocation(NPC, 668.74, -21.28, 142.24, 2, 0)
	MovementLoopAddLocation(NPC, 664.3, -21.16, 100.37, 2, 1)
	MovementLoopAddLocation(NPC, 664.3, -21.16, 100.37, 2, 8,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 664.3, -21.16, 100.37, 2, 1)
end


