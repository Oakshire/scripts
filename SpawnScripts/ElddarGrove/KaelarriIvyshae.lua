--[[
	Script Name	: SpawnScripts/ElddarGrove/KaelarriIvyshae.lua
	Script Purpose	: Kaelarri Ivyshae 
	Script Author	:	Devn00b 
	Script Date		:	04/10/2020 02:29:10 PM
	Script Notes	:	Locations collected from Live -  Dialogue update 05.01.2022 Dorbin
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
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 649.78, -17.86, -205.23, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 648.62, -18.52, -254.29, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.62, -21.7, -293.3, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.1, -21.9, -302.8, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 639.36, -20.31, -310.61, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 608.37, -20.8, -313.51, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 550.27, -21.46, -312.73, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 537.88, -20.8, -297.38, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 576.67, -20.63, -261.1, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 591.64, -21.03, -254.6, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 576.67, -20.63, -261.1, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 537.88, -20.8, -297.38, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 550.27, -21.46, -312.73, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 608.37, -20.8, -313.51, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 639.36, -20.31, -310.61, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.1, -21.9, -302.8, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.62, -21.7, -293.3, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 648.62, -18.52, -254.29, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 649.78, -17.86, -205.23, 2, math.random(0,8))
end
