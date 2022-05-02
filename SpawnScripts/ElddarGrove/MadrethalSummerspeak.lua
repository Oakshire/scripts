--[[
	Script Name	: SpawnScripts/ElddarGrove/MadrethalSummerspeak.lua
	Script Purpose	: Madrethal Summerspeak 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Dialogue updated 5.1.2022 Dorbin
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
	MovementLoopAddLocation(NPC, 648.84, -18.91, -234.92, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 646.07, -18.74, -257.91, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 606.34, -20.89, -257.81, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 642.56, -18.86, -258.37, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.43, -21.07, -288.05, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.37, -21.69, -293.22, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 651.99, -21.73, -305.33, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 647.05, -19.16, -323.38, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 647.29, -11.71, -388.38, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 658.21, -10.61, -396.95, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 680.99, -11.78, -392.94, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 697.53, -14.19, -410.92, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 701.38, -16.57, -426.35, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 709.3, -20.04, -448.29, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 712.45, -20.97, -456.77, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 744.98, -22.31, -472.95, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 768.56, -21.8, -495.14, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 780.53, -21.99, -508.32, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 803.66, -21.61, -551.4, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 780.53, -21.99, -508.32, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 768.56, -21.8, -495.14, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 744.98, -22.31, -472.95, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 712.45, -20.97, -456.77, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 709.3, -20.04, -448.29, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 701.38, -16.57, -426.35, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 697.53, -14.19, -410.92, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 680.99, -11.78, -392.94, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 658.21, -10.61, -396.95, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 647.29, -11.71, -388.38, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 647.05, -19.16, -323.38, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 651.99, -21.73, -305.33, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.37, -21.69, -293.22, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.43, -21.07, -288.05, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 642.56, -18.86, -258.37, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 606.34, -20.89, -257.81, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 646.07, -18.74, -257.91, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 648.84, -18.91, -234.92, 2, math.random(0,8))
end


