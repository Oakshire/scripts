--[[
	Script Name		:	fanthis.lua
	Script Purpose	:	Waypoint Path for fanthis.lua
	Script Author	:	Devn00b
	Script Date		:	07/31/2020 07:33:49 PM
	Script Notes	:	Locations collected from Live
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
GenericEcology2Hail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcology2Callout(NPC, Spawn, faction)
    end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 648.13, -13.26, -358.4, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 646.13, -19.97, -319.17, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.47, -21.65, -305.03, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 651.59, -19.68, -274.91, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 660.91, -19.39, -273.14, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 686.92, -19.49, -279.5, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 698.27, -17.96, -309.4, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 704.73, -17.06, -332.45, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 698.27, -17.96, -309.4, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 686.92, -19.49, -279.5, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 660.91, -19.39, -273.14, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 651.59, -19.68, -274.91, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.47, -21.65, -305.03, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 646.13, -19.97, -319.17, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 648.13, -13.26, -358.4, 2, math.random(0,8))
end




