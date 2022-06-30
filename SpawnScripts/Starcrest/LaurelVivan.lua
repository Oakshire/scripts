--[[
    Script Name    : SpawnScripts/Starcrest/LaurelVivan.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.29 02:06:45
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

function Door(NPC,Spawn)
    local door = GetSpawn(NPC, 2340075)
    UseWidget(door)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 781.62, -25.1, 334.26, 2, 1)
	MovementLoopAddLocation(NPC, 781.62, -25.1, 334.26, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 782.13, -25.1, 334.71, 2, 0)
	MovementLoopAddLocation(NPC, 783.6, -25.17, 332.58, 2, 0)
	MovementLoopAddLocation(NPC, 792.65, -25.24, 327.76, 2, 0)
	MovementLoopAddLocation(NPC, 794.47, -25.39, 327.75, 2, 1)
	MovementLoopAddLocation(NPC, 794.47, -25.39, 327.75, 2, 35,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 795.81, -25.52, 328.18, 2, 0)
	MovementLoopAddLocation(NPC, 791.72, -25.22, 328.27, 2, 0)
	MovementLoopAddLocation(NPC, 786.15, -25.24, 331.21, 2, 0)
	MovementLoopAddLocation(NPC, 777.35, -25.04, 333.11, 2, 0)
	MovementLoopAddLocation(NPC, 765.24, -25.23, 341.3, 2, 0)
	MovementLoopAddLocation(NPC, 750.03, -24.74, 339.1, 2, 0)
	MovementLoopAddLocation(NPC, 748.16, -24.74, 335.44, 2, 0)
	MovementLoopAddLocation(NPC, 747.39, -24.76, 332.39, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 748.88, -24.96, 326.72, 2, 0)
	MovementLoopAddLocation(NPC, 750.47, -24.96, 322.38, 2, 0)
	MovementLoopAddLocation(NPC, 750.23, -24.96, 321.75, 2, 1)
	MovementLoopAddLocation(NPC, 750.23, -24.96, 321.75, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 749.62, -24.96, 320.8, 2, 0)
	MovementLoopAddLocation(NPC, 750.21, -24.96, 322.96, 2, 0)
	MovementLoopAddLocation(NPC, 749.04, -24.96, 327.62, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 747.13, -24.77, 331.44, 2, 0)
	MovementLoopAddLocation(NPC, 744.58, -24.73, 333.3, 2, 0)
	MovementLoopAddLocation(NPC, 736.37, -24.54, 332.96, 2, 0)
	MovementLoopAddLocation(NPC, 727.16, -20.42, 324.69, 2, 0)
	MovementLoopAddLocation(NPC, 726, -20.42, 323.31, 2, 0)
	MovementLoopAddLocation(NPC, 725.81, -20.49, 316.64, 2, 0)
	MovementLoopAddLocation(NPC, 732.79, -20.43, 306.64, 2, 0)
	MovementLoopAddLocation(NPC, 731.76, -20.43, 302.49, 2, 0)
	MovementLoopAddLocation(NPC, 723.72, -20.36, 291.19, 2, 0)
	MovementLoopAddLocation(NPC, 715.25, -20.12, 284.99, 2, 1)
	MovementLoopAddLocation(NPC, 715.25, -20.12, 284.99, 2, 35,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 714.08, -20.05, 284.23, 2, 0)
	MovementLoopAddLocation(NPC, 718.63, -20.24, 287.22, 2, 0)
	MovementLoopAddLocation(NPC, 726.6, -20.45, 294.54, 2, 0)
	MovementLoopAddLocation(NPC, 731.11, -20.43, 301.36, 2, 0)
	MovementLoopAddLocation(NPC, 732.95, -20.43, 304.61, 2, 0)
	MovementLoopAddLocation(NPC, 732.54, -20.55, 314.8, 2, 0)
	MovementLoopAddLocation(NPC, 731.36, -20.53, 318.92, 2, 0)
	MovementLoopAddLocation(NPC, 729.79, -20.53, 325.19, 2, 0)
	MovementLoopAddLocation(NPC, 734.93, -23.42, 329.61, 2, 0)
	MovementLoopAddLocation(NPC, 737.65, -24.6, 332.15, 2, 0)
	MovementLoopAddLocation(NPC, 750.46, -24.74, 340.39, 2, 0)
	MovementLoopAddLocation(NPC, 760.4, -25.01, 339.69, 2, 0)
	MovementLoopAddLocation(NPC, 774.5, -25.03, 334.47, 2, 0)
	MovementLoopAddLocation(NPC, 778.75, -25.07, 332.81, 2, 0)
end


