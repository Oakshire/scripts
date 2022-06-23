--[[
    Script Name    : SpawnScripts/Nettleville/Eusimonae.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.21 04:06:14
    Script Purpose : 
                   : 
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


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 627.67, -19.54, 304, 2, 1)
	MovementLoopAddLocation(NPC, 627.67, -19.54, 304, 2, 55,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 627.67, -19.54, 304, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 627.71, -19.67, 305.11, 2, 0)
	MovementLoopAddLocation(NPC, 632.04, -20.38, 312.58, 2, 1)
	MovementLoopAddLocation(NPC, 632.04, -20.38, 312.58, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 632.04, -20.38, 312.58, 2, 30,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 632.59, -20.45, 311.71, 2, 0)
	MovementLoopAddLocation(NPC, 639.71, -20.44, 307.55, 2, 0)
	MovementLoopAddLocation(NPC, 646.66, -20.34, 303.48, 2, 0)
	MovementLoopAddLocation(NPC, 650.76, -20.41, 301.09, 2, 0)
	MovementLoopAddLocation(NPC, 653.3, -20.42, 299.61, 2, 0)
	MovementLoopAddLocation(NPC, 655.66, -20.42, 302.19, 2, 0)
	MovementLoopAddLocation(NPC, 658.59, -20.42, 307.37, 2, 0)
	MovementLoopAddLocation(NPC, 659.63, -20.43, 308.29, 2, 15,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 660.18, -20.43, 308.75, 2, 0)
	MovementLoopAddLocation(NPC, 656.87, -20.42, 302.69, 2, 0)
	MovementLoopAddLocation(NPC, 656, -20.42, 301.1, 2, 0)
	MovementLoopAddLocation(NPC, 653.55, -20.39, 294.58, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 652.68, -20.42, 291.36, 2, 0)
	MovementLoopAddLocation(NPC, 652.99, -20.42, 288.4, 2, 0)
	MovementLoopAddLocation(NPC, 652.23, -20.42, 285.84, 2, 0)
	MovementLoopAddLocation(NPC, 647.21, -20.42, 285.26, 2, 0)
	MovementLoopAddLocation(NPC, 644.44, -20.42, 284.94, 2, 0)
	MovementLoopAddLocation(NPC, 642.18, -20.42, 283.33, 2, 0)
	MovementLoopAddLocation(NPC, 639.82, -20.42, 282.67, 2, 1)
	MovementLoopAddLocation(NPC, 639.82, -20.42, 282.67, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 638.68, -20.42, 282.89, 2, 0)
	MovementLoopAddLocation(NPC, 641.67, -20.42, 283.91, 2, 0)
	MovementLoopAddLocation(NPC, 643.72, -20.42, 284.4, 2, 0)
	MovementLoopAddLocation(NPC, 646.39, -20.42, 284.08, 2, 0)
	MovementLoopAddLocation(NPC, 649, -20.42, 287.38, 2, 0)
	MovementLoopAddLocation(NPC, 649.68, -20.42, 289.04, 2, 0)
	MovementLoopAddLocation(NPC, 652.65, -20.42, 290.28, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 653.6, -20.4, 294.43, 2, 0)
	MovementLoopAddLocation(NPC, 648.01, -20.44, 295.91, 2, 0)
	MovementLoopAddLocation(NPC, 644.54, -20.51, 295.12, 2, 0)
	MovementLoopAddLocation(NPC, 639.67, -20.59, 295.66, 2, 1)
	MovementLoopAddLocation(NPC, 639.67, -20.59, 295.66, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 637.57, -20.58, 298.44, 2, 0)
	MovementLoopAddLocation(NPC, 633.1, -20.62, 302.63, 2, 0)
	MovementLoopAddLocation(NPC, 629.77, -20.66, 306.56, 2, 0)
	MovementLoopAddLocation(NPC, 629.15, -19.54, 303.29, 2, 0)
end

function Door(NPC,Spawn)
    local door = GetSpawn(NPC, 2330093)
    UseWidget(door)
end
    