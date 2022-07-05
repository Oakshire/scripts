--[[
    Script Name    : SpawnScripts/Starcrest/Fantalosia.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.29 03:06:04
    Script Purpose : 
                   : 
--]]


dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
    SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
    FaceTarget (NPC,Spawn)
    GenericRaceCheckHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericRaceCheckCallout(NPC, Spawn, faction)
end

function Door(NPC,Spawn)
    local door = GetSpawn(NPC, 2340077)
    UseWidget(door)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 809.56, -20.45, 300.34, 2, 1)
	MovementLoopAddLocation(NPC, 809.56, -20.45, 300.34, 2, 40,"Action")
	MovementLoopAddLocation(NPC, 810.27, -20.45, 300.32, 2, 0)
	MovementLoopAddLocation(NPC, 810.27, -20.45, 297.01, 2, 0)
	MovementLoopAddLocation(NPC, 808.2, -20.45, 294.76, 2, 0)
	MovementLoopAddLocation(NPC, 807.87, -20.45, 294.13, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 801.4, -20.43, 291.3, 2, 0)
	MovementLoopAddLocation(NPC, 791.66, -20.51, 283.54, 2, 0)
	MovementLoopAddLocation(NPC, 786.03, -20.53, 279, 2, 0)
	MovementLoopAddLocation(NPC, 777.07, -20.54, 280.1, 2, 1)
	MovementLoopAddLocation(NPC, 777.07, -20.54, 280.1, 2, 25,"Action")
	MovementLoopAddLocation(NPC, 776.25, -20.52, 280.2, 2, 0)
	MovementLoopAddLocation(NPC, 776.29, -20.54, 278.81, 2, 0)
	MovementLoopAddLocation(NPC, 773.86, -20.55, 276.53, 2, 0)
	MovementLoopAddLocation(NPC, 772.22, -20.52, 275.91, 2, 0)
	MovementLoopAddLocation(NPC, 769.45, -20.5, 276.03, 2, 0)
	MovementLoopAddLocation(NPC, 760.53, -20.38, 267.14, 2, 1)
	MovementLoopAddLocation(NPC, 760.53, -20.38, 267.14, 2, 45,"Action")
	MovementLoopAddLocation(NPC, 761.11, -20.37, 267.98, 2, 0)
	MovementLoopAddLocation(NPC, 757.42, -20.57, 270.83, 2, 0)
	MovementLoopAddLocation(NPC, 750.45, -20.7, 273.73, 2, 0)
	MovementLoopAddLocation(NPC, 740.4, -20.4, 276.34, 2, 0)
	MovementLoopAddLocation(NPC, 727.85, -20.42, 281.07, 2, 0)
	MovementLoopAddLocation(NPC, 725.19, -20.42, 286.6, 2, 0)
	MovementLoopAddLocation(NPC, 718.43, -20.24, 291.28, 2, 1)
	MovementLoopAddLocation(NPC, 718.43, -20.24, 291.28, 2, 45,"Action")
	MovementLoopAddLocation(NPC, 718.23, -20.24, 292.73, 2, 0)
	MovementLoopAddLocation(NPC, 728.11, -20.44, 296.78, 2, 0)
	MovementLoopAddLocation(NPC, 732.56, -20.43, 305.13, 2, 0)
	MovementLoopAddLocation(NPC, 732.61, -20.43, 308.31, 2, 0)
	MovementLoopAddLocation(NPC, 729.23, -20.49, 325.04, 2, 0)
	MovementLoopAddLocation(NPC, 737.2, -24.58, 331.87, 2, 0)
	MovementLoopAddLocation(NPC, 746.6, -24.71, 336.07, 2, 0)
	MovementLoopAddLocation(NPC, 753.19, -24.77, 340.19, 2, 0)
	MovementLoopAddLocation(NPC, 759.6, -24.97, 339.85, 2, 0)
	MovementLoopAddLocation(NPC, 764.36, -25.19, 339, 2, 0)
	MovementLoopAddLocation(NPC, 772.46, -25.03, 333.33, 2, 0)
	MovementLoopAddLocation(NPC, 769.03, -24.88, 328.28, 2, 1)
	MovementLoopAddLocation(NPC, 769.03, -24.88, 328.28, 2, 45,"Action")
	MovementLoopAddLocation(NPC, 772.44, -24.89, 328.08, 2, 0)
	MovementLoopAddLocation(NPC, 781.07, -24.95, 328.63, 2, 0)
	MovementLoopAddLocation(NPC, 788.33, -24.97, 327.1, 2, 0)
	MovementLoopAddLocation(NPC, 801.64, -25.7, 320.31, 2, 0)
	MovementLoopAddLocation(NPC, 811.13, -25.87, 317.08, 2, 0)
	MovementLoopAddLocation(NPC, 811.41, -25.85, 312.13, 2, 0)
	MovementLoopAddLocation(NPC, 809.97, -24.92, 308.5, 2, 0)
	MovementLoopAddLocation(NPC, 800.11, -20.31, 300.06, 2, 0)
	MovementLoopAddLocation(NPC, 800.97, -20.41, 293.71, 2, 0)
	MovementLoopAddLocation(NPC, 803.37, -20.39, 291.13, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 807.52, -20.45, 293.49, 2, 0)
	MovementLoopAddLocation(NPC, 808.02, -20.45, 296.77, 2, 0)
	MovementLoopAddLocation(NPC, 807.79, -20.45, 299.5, 2, 0)
end


function Action(NPC)
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then
        PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
    elseif choice == 4 then
        PlayFlavor(NPC, "", "", "tap", 0, 0, Spawn)
    end
end   

