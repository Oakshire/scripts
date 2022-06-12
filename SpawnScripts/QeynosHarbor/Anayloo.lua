--[[
    Script Name    : SpawnScripts/QeynosHarbor/Anayloo.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.12 03:06:41
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")		
    waypoints(NPC)
end

function hailed(NPC, Spawn)
GenericRaceCheckHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
GenericRaceCheckCallout(NPC, Spawn, faction)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 852.77, -23.99, 74.38, 2, 20)
	MovementLoopAddLocation(NPC, 848.71, -25.37, 71.82, 2, 0)
	MovementLoopAddLocation(NPC, 856.05, -25.37, 57.36, 2, 0)
	MovementLoopAddLocation(NPC, 865.16, -25.46, 45.37, 2, 0)
	MovementLoopAddLocation(NPC, 884.13, -25.37, 46.63, 2, 0)
	MovementLoopAddLocation(NPC, 892.46, -25.37, 39.64, 2, 0)
	MovementLoopAddLocation(NPC, 903.84, -25.37, -1.96, 2, 0)
	MovementLoopAddLocation(NPC, 896.71, -23.9, -31, 2, 0)
	MovementLoopAddLocation(NPC, 884.5, -25.4, -54.97, 2, 0)
	MovementLoopAddLocation(NPC, 854.92, -25.42, -59.72, 2, 0)
	MovementLoopAddLocation(NPC, 821.1, -22.52, -59.48, 2, 0)
	MovementLoopAddLocation(NPC, 801.26, -20.72, -58.68, 2, 0)
	MovementLoopAddLocation(NPC, 705.38, -20.7, -64.28, 2, 0)
	MovementLoopAddLocation(NPC, 705.41, -20.7, -64.2, 2, 60)
	MovementLoopAddLocation(NPC, 684.01, -21.44, -104.97, 2, 0)
	MovementLoopAddLocation(NPC, 678.45, -21.15, -106.46, 2, 0)
	MovementLoopAddLocation(NPC, 677.95, -21.05, -104.68, 2, 60)
	MovementLoopAddLocation(NPC, 681.86, -21.38, -105.35, 2, 0)
	MovementLoopAddLocation(NPC, 710.47, -20.98, -74.27, 2, 0)
	MovementLoopAddLocation(NPC, 748.66, -21.28, -62.63, 2, 0)
	MovementLoopAddLocation(NPC, 757.97, -20.8, -31.69, 2, 0)
	MovementLoopAddLocation(NPC, 747.91, -20.71, 7.93, 2, 0)
	MovementLoopAddLocation(NPC, 748.73, -20.64, 9.16, 2, 60)
	MovementLoopAddLocation(NPC, 749.16, -20.67, 8.58, 2, 0)
	MovementLoopAddLocation(NPC, 764.65, -21.49, -45.82, 2, 0)
	MovementLoopAddLocation(NPC, 801.67, -20.69, -62.41, 2, 0)
	MovementLoopAddLocation(NPC, 832.47, -24.93, -64.19, 2, 0)
	MovementLoopAddLocation(NPC, 879.45, -25.36, -64.27, 2, 0)
	MovementLoopAddLocation(NPC, 901.62, -23.43, -38.53, 2, 0)
	MovementLoopAddLocation(NPC, 907.79, -25.37, -1.33, 2, 0)
	MovementLoopAddLocation(NPC, 905.68, -25.41, 15.67, 2, 0)
	MovementLoopAddLocation(NPC, 896.9, -25.37, 38.39, 2, 0)
	MovementLoopAddLocation(NPC, 887.14, -25.37, 46.11, 2, 0)
	MovementLoopAddLocation(NPC, 866, -25.45, 51.09, 2, 0)
	MovementLoopAddLocation(NPC, 858.21, -25.37, 54.68, 2, 0)
	MovementLoopAddLocation(NPC, 848.18, -25.47, 67.87, 2, 0)
end


