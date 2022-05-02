--[[
	Script Name	: SpawnScripts/ElddarGrove/VelisarrMorningdew.lua
	Script Purpose	: Velisarr Morningdew 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Updated dialogue 5.1.2022 Dorbin
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
	MovementLoopAddLocation(NPC, 605.46, -20.85, -258.55, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 635.95, -19.24, -257.15, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 650.38, -20.6, -283.68, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 651.79, -21.73, -293.48, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 645.56, -13.32, -360.51, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 691.01, -13.83, -373.44, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 684.74, -11.95, -393.07, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 697.74, -14.25, -411.29, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 702.22, -16.71, -426.62, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 711.01, -20.44, -449.76, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 723.23, -21.69, -461.71, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 747.92, -22.31, -474.89, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 778.72, -21.82, -502.99, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 794.88, -22.25, -536.31, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 808.93, -21.16, -532.73, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 794.88, -22.25, -536.31, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 778.72, -21.82, -502.99, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 747.92, -22.31, -474.89, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 723.23, -21.69, -461.71, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 711.01, -20.44, -449.76, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 702.22, -16.71, -426.62, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 697.74, -14.25, -411.29, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 684.74, -11.95, -393.07, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 691.01, -13.83, -373.44, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 645.56, -13.32, -360.51, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 651.79, -21.73, -293.48, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 650.38, -20.6, -283.68, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 635.95, -19.24, -257.15, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 605.46, -20.85, -258.55, 2, math.random(0,3))
end

