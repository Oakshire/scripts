--[[
	Script Name	: SpawnScripts/ElddarGrove/KaylelleStarchaser.lua
	Script Purpose	: Kaylelle Starchaser 
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
    GenericRaceCheckHail(NPC, Spawn)
end

function InRange(NPC,Spawn)
    GenericRaceCheckCallout(NPC, Spawn)
    end
    
function respawn(NPC)
		spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 614.94, -20.82, -260.61, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 630.77, -19.78, -256.17, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 644.08, -19.01, -263.39, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 649.33, -20.72, -284.7, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.01, -21.79, -293.97, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 649.67, -21.64, -304.66, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 639.98, -20.33, -310.22, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 592.56, -21.15, -316.11, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 558.55, -21.89, -316.44, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 541.91, -18.75, -367.38, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 558.55, -21.89, -316.44, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 592.56, -21.15, -316.11, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 639.98, -20.33, -310.22, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 649.67, -21.64, -304.66, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.01, -21.79, -293.97, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 649.33, -20.72, -284.7, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 644.08, -19.01, -263.39, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 630.77, -19.78, -256.17, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 614.94, -20.82, -260.61, 2, math.random(0,8))
end
