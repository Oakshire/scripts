--[[
	Script Name	: SpawnScripts/ElddarGrove/Mina.lua
	Script Purpose	: Mina 
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
	MovementLoopAddLocation(NPC, 610.73, -21.11, -232.03, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 634.45, -19.4, -257.15, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 653.33, -19.06, -269.45, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 683.06, -19.57, -277.29, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 699.51, -17.27, -324.09, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 716.17, -17.04, -329.63, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 734.96, -17.92, -326.29, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 743.56, -20.67, -334.42, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 734.96, -17.92, -326.29, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 716.17, -17.04, -329.63, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 699.51, -17.27, -324.09, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 683.06, -19.57, -277.29, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 653.33, -19.06, -269.45, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 634.45, -19.4, -257.15, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 610.73, -21.11, -232.03, 2, math.random(0,15))
end


