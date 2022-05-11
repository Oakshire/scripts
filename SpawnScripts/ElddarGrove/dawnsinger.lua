--[[
	Script Name		:	dawnsinger.lua
	Script Purpose	:	Waypoint Path for dawnsinger.lua
	Script Author	:	Devn00b
	Script Date		:	07/31/2020 09:03:35 PM
	Script Notes	:	Locations collected from Live -  Updated Dialogue 05/01/2022 Dorbin
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

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 513.51, -20.71, -284.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 554.79, -20.24, -356.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 574.86, -21.97, -358.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 643.52, -12.73, -371.19, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 654.75, -11.17, -395.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 683.87, -11.91, -390.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 688.47, -13.47, -374.35, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 646.06, -13.35, -359.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 645.35, -17.79, -328.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 651.42, -21.58, -307.12, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 647.38, -18.93, -262.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 631.82, -19.65, -257.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 628.44, -19.96, -255.61, 2, 1)
	MovementLoopAddLocation(NPC, 628.44, -19.96, -255.61, 2, math.random(8,20),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 628.44, -19.96, -255.61, 2, 1)
	MovementLoopAddLocation(NPC, 640.68, -18.94, -258.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 652.34, -19.09, -269.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 685.73, -19.57, -279.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 699.86, -17.16, -328.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 718.42, -17.05, -329.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 744.29, -16.8, -316.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 772.71, -19, -330.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 744.29, -16.8, -316.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 718.42, -17.05, -329.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 699.86, -17.16, -328.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 685.73, -19.57, -279.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 652.34, -19.09, -269.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 640.68, -18.94, -258.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 628.44, -19.96, -255.61, 2, 20)
	MovementLoopAddLocation(NPC, 631.82, -19.65, -257.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 647.38, -18.93, -262.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 651.42, -21.58, -307.12, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 645.35, -17.79, -328.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 646.06, -13.35, -359.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 688.47, -13.47, -374.35, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 683.87, -11.91, -390.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 654.75, -11.17, -395.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 643.52, -12.73, -371.19, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 574.86, -21.97, -358.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 554.79, -20.24, -356.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 513.51, -20.71, -284.46, 2, math.random(0,5))
end


