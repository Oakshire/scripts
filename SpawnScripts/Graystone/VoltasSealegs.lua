--[[
    Script Name    : SpawnScripts/Graystone/VoltasSealegs.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.07 08:07:23
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")	 
    	waypoints(NPC)
    end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)        
    GenericEcology2Hail(NPC, Spawn, faction)
    end


function InRange(NPC, Spawn) 
    GenericEcology2Callout(NPC, Spawn, faction)                  
end

function respawn(NPC)
	spawn(NPC)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 874.02, -20.01, -111.04, 2, 1)
	MovementLoopAddLocation(NPC, 874.02, -20.01, -111.04, 2, 35,"EcologyEmotes")
--	MovementLoopAddLocation(NPC, 873.41, -20.01, -110.98, 2, 0)
	MovementLoopAddLocation(NPC, 871.38, -20.01, -109.99, 2, 0)
	MovementLoopAddLocation(NPC, 868.84, -20, -110.27, 2, 0)
	MovementLoopAddLocation(NPC, 866.6, -20.02, -107.73, 2, 0)
	MovementLoopAddLocation(NPC, 858.58, -23.57, -109.19, 2, 0)
	MovementLoopAddLocation(NPC, 858.01, -23.57, -108.41, 2, 0)
	MovementLoopAddLocation(NPC, 856.83, -24.94, -105.08, 2, 0)
	MovementLoopAddLocation(NPC, 846.33, -23.27, -106.86, 2, 0)
	MovementLoopAddLocation(NPC, 844.58, -22.77, -112.87, 2, 0)
	MovementLoopAddLocation(NPC, 843.22, -22.22, -112.76, 2, 0)
	MovementLoopAddLocation(NPC, 836.02, -20.93, -111.8, 2, 2,"Door1")
	MovementLoopAddLocation(NPC, 830.68, -20.96, -107.59, 2, 0)
	MovementLoopAddLocation(NPC, 830.37, -20.96, -104.01, 2, 0)
	MovementLoopAddLocation(NPC, 829.39, -20.96, -99.23, 2, 1)
	MovementLoopAddLocation(NPC, 829.39, -20.96, -99.23, 2, 55,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 829.01, -20.96, -100.66, 2, 0)
	MovementLoopAddLocation(NPC, 829.79, -20.96, -106, 2, 0)
	MovementLoopAddLocation(NPC, 830.33, -20.96, -107.27, 2, 2,"Door1")
	MovementLoopAddLocation(NPC, 833.88, -20.93, -110.69, 2, 0)
	MovementLoopAddLocation(NPC, 828.28, -20.94, -115.17, 2, 0)
	MovementLoopAddLocation(NPC, 817.98, -20.93, -123.81, 2, 1)
	MovementLoopAddLocation(NPC, 817.98, -20.93, -123.81, 2, 33,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 821.74, -20.93, -114.75, 2, 0)
	MovementLoopAddLocation(NPC, 830.85, -20.94, -113.86, 2, 0)
	MovementLoopAddLocation(NPC, 841.95, -22.02, -115.08, 2, 0)
	MovementLoopAddLocation(NPC, 844.19, -22.62, -115.14, 2, 0)
	MovementLoopAddLocation(NPC, 847.31, -23.18, -109.1, 2, 0)
	MovementLoopAddLocation(NPC, 854.3, -24.97, -106.52, 2, 0)
	MovementLoopAddLocation(NPC, 856.53, -24.76, -105.82, 2, 0)
	MovementLoopAddLocation(NPC, 861.41, -24.96, -106.01, 2, 0)
	MovementLoopAddLocation(NPC, 867.54, -24.99, -105.27, 2, 0)
	MovementLoopAddLocation(NPC, 874.06, -24.95, -102.68, 2, 0)
	MovementLoopAddLocation(NPC, 886.83, -22.26, -100.22, 2, 0)
	MovementLoopAddLocation(NPC, 887.61, -22.27, -101.35, 2, 0)
	MovementLoopAddLocation(NPC, 891.7, -22.3, -108.78, 2, 0)
	MovementLoopAddLocation(NPC, 900.84, -22.29, -108.13, 2, 0)
	MovementLoopAddLocation(NPC, 904.03, -22.26, -107.81, 2, 0)
	MovementLoopAddLocation(NPC, 907.47, -20.69, -105.14, 2, 2,"Door2")
	MovementLoopAddLocation(NPC, 910.53, -20.66, -102.5, 2, 0)
	MovementLoopAddLocation(NPC, 912.25, -20.73, -98.42, 2, 0)
	MovementLoopAddLocation(NPC, 911.82, -20.73, -90.99, 2, 1)
	MovementLoopAddLocation(NPC, 911.06, -20.73, -91.00, 2, 55,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 912.23, -20.73, -91.03, 2, 0)
	MovementLoopAddLocation(NPC, 911.54, -20.73, -98.79, 2, 0)
	MovementLoopAddLocation(NPC, 911.61, -20.73, -100.87, 2, 2,"Door2")
	MovementLoopAddLocation(NPC, 907.04, -20.69, -104.05, 2, 0)
	MovementLoopAddLocation(NPC, 900.14, -22.31, -107.67, 2, 0)
	MovementLoopAddLocation(NPC, 894.39, -22.3, -107.09, 2, 0)
	MovementLoopAddLocation(NPC, 888.98, -22.26, -99.18, 2, 0)
	MovementLoopAddLocation(NPC, 885.09, -22.15, -97.9, 2, 0)
	MovementLoopAddLocation(NPC, 875.99, -24.94, -101.14, 2, 0)
	MovementLoopAddLocation(NPC, 876.65, -23.68, -106.08, 2, 0)
	MovementLoopAddLocation(NPC, 867.92, -19.99, -107.43, 2, 0)
	MovementLoopAddLocation(NPC, 869.24, -20.01, -110.61, 2, 0)
	MovementLoopAddLocation(NPC, 871.49, -20.01, -109.98, 2, 0)
	MovementLoopAddLocation(NPC, 874.01, -20.01, -111.95, 2, 0)
end

function Door1(NPC,Spawn)
    local door = GetSpawn(NPC, 2350076)
    UseWidget(door)
end

function Door2(NPC,Spawn)
    local door = GetSpawn(NPC, 2350079)
    UseWidget(door)
end

