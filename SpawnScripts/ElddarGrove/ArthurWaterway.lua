--[[
	Script Name	: SpawnScripts/ElddarGrove/ArthurWaterway.lua
	Script Purpose	: Arthur Waterway 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
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
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 802.94, -21.54, -552.06, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 781.61, -22.18, -510.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 754.8, -21.82, -481.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 713.01, -20.96, -456.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 701.91, -16.92, -427.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 691.7, -13.19, -403.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 678.25, -11.64, -393.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 650.19, -11.56, -399.55, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 640.41, -13.1, -371.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 609.56, -18.44, -369.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 562.49, -20.75, -362.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 539.17, -20.64, -292.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 562.36, -19.83, -268.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 591.98, -21.09, -255.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 562.36, -19.83, -268.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 539.17, -20.64, -292.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 562.49, -20.75, -362.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 609.56, -18.44, -369.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 640.41, -13.1, -371.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 650.19, -11.56, -399.55, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 678.25, -11.64, -393.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 691.7, -13.19, -403.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 701.91, -16.92, -427.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 713.01, -20.96, -456.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 754.8, -21.82, -481.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 781.61, -22.18, -510.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 802.94, -21.54, -552.06, 2, math.random(0,5))
end


