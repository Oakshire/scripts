--[[
    Script Name    : SpawnScripts/QeynosHarbor/KaraThornwell.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.15 03:04:25
    Script Purpose : 
                   : 
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
	MovementLoopAddLocation(NPC, 944.46, -25.55, 11.22, 2, 1)
	MovementLoopAddLocation(NPC, 944.46, -25.55, 11.22, 2, math.random(10,15),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 936.46, -25.55, 14.54, 2, 1,"Door1")
	MovementLoopAddLocation(NPC, 931.78, -25.39, 14.61, 2, 0)
	MovementLoopAddLocation(NPC, 931.83, -25.58, 28.63, 2, 2,"Door1")
	MovementLoopAddLocation(NPC, 928.66, -25.51, 38.89, 2, 0)
	MovementLoopAddLocation(NPC, 919.1, -25.49, 58.09, 2, 0)
	MovementLoopAddLocation(NPC, 917.32, -25.49, 60.61, 2, 0)
	MovementLoopAddLocation(NPC, 916.59, -25.49, 60.91, 2, 1)
	MovementLoopAddLocation(NPC, 916.59, -25.49, 60.91, 2, math.random(20,35),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 916.59, -25.49, 60.91, 2, 1)
	MovementLoopAddLocation(NPC, 916.99, -25.49, 58.79, 2, 0)
	MovementLoopAddLocation(NPC, 916.01, -25.49, 55.59, 2, 0)
	MovementLoopAddLocation(NPC, 905.82, -25.28, 48.66, 2, 0)
	MovementLoopAddLocation(NPC, 896.99, -25.5, 46.46, 2, 0)
	MovementLoopAddLocation(NPC, 879.32, -25.37, 60.34, 2, 0)
	MovementLoopAddLocation(NPC, 879.21, -25.37, 60.78, 2, 1)
	MovementLoopAddLocation(NPC, 879.21, -25.37, 60.78, 2, math.random(20,35),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 879.21, -25.37, 60.78, 2, 1)
	MovementLoopAddLocation(NPC, 858.01, -25.41, 51.28, 2, 0)
	MovementLoopAddLocation(NPC, 839.59, -25.39, 87.5, 2, 0)
	MovementLoopAddLocation(NPC, 838.52, -25.46, 93.71, 2, 0)
	MovementLoopAddLocation(NPC, 842.76, -25.5, 101.83, 2, 0)
	MovementLoopAddLocation(NPC, 848.34, -25.47, 104.63, 2, 0)
	MovementLoopAddLocation(NPC, 851.55, -25.37, 98.52, 2, 0)
	MovementLoopAddLocation(NPC, 839.96, -25.41, 91.68, 2, 1)
	MovementLoopAddLocation(NPC, 839.96, -25.41, 91.68, 2, math.random(20,35),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 844.38, -25.38, 78.71, 2, 0)
	MovementLoopAddLocation(NPC, 859.57, -25.42, 51.17, 2, 0)
	MovementLoopAddLocation(NPC, 866.12, -25.48, 33.99, 2, 0)
	MovementLoopAddLocation(NPC, 880.02, -25.43, 32.08, 2, 0)
    MovementLoopAddLocation(NPC, 884.48, -25.43, 28.59, 2, 0)
	MovementLoopAddLocation(NPC, 886.05, -25.43, 26.42, 2, 0)
	MovementLoopAddLocation(NPC, 886.05, -25.43, 26.34, 2, 1)
	MovementLoopAddLocation(NPC, 886.05, -25.43, 26.34, 2, math.random(20,35),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 896.02, -25.42, 27.39, 2, 0)
	MovementLoopAddLocation(NPC, 901.05, -25.43, -10.63, 2, 0)
	MovementLoopAddLocation(NPC, 897.19, -25.58, -11.67, 2, 1)
    MovementLoopAddLocation(NPC, 897.19, -25.58, -11.67, 2, math.random(20,35),"EcologyEmotes")
	MovementLoopAddLocation(NPC, 901.02, -25.43, 3.99, 2, 0)
	MovementLoopAddLocation(NPC, 914.61, -25.45, 15.8, 2, 0)
	MovementLoopAddLocation(NPC, 928.32, -25.47, 20.77, 2, 0)
	MovementLoopAddLocation(NPC, 931.98, -25.39, 14.82, 2, 0)
	MovementLoopAddLocation(NPC, 937.09, -25.55, 14.27, 2, 1,"Door1")
	MovementLoopAddLocation(NPC, 950.05, -25.55, 15.47, 2, 1,"Door1")
	MovementLoopAddLocation(NPC, 950.7, -25.55, 15.77, 2, 1)
	MovementLoopAddLocation(NPC, 950.7, -25.55, 15.77, 2, math.random(20,35),"EcologyEmotes")
end


function Door1(NPC,Spawn)
    local door = GetSpawn(NPC, 2210344)
    UseWidget(door)
end