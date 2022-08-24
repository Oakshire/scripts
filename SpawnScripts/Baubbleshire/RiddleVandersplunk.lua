--[[
    Script Name    : SpawnScripts/Baubbleshire/RiddleVandersplunk.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.23 02:08:51
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
GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
    end

function respawn(NPC)
	spawn(NPC)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 902.92, -17.92, -503.68, 2, 1)
	MovementLoopAddLocation(NPC, 902.92, -17.92, -503.68, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 902.92, -17.92, -503.68, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 902.89, -17.87, -504.15, 2, 0)
	MovementLoopAddLocation(NPC, 902.28, -17.89, -503.86, 2, 0)
	MovementLoopAddLocation(NPC, 900.3, -17.96, -502.91, 2, 0)
	MovementLoopAddLocation(NPC, 900.06, -18.01, -501.55, 2, 0)
	MovementLoopAddLocation(NPC, 904.43, -18.13, -499.78, 2, 0)
	MovementLoopAddLocation(NPC, 907.47, -17.8, -498.68, 2, 0)
	MovementLoopAddLocation(NPC, 910.31, -16.03, -493.93, 2, 0)
	MovementLoopAddLocation(NPC, 911.69, -17.2, -488.34, 2, 0)
	MovementLoopAddLocation(NPC, 911.36, -17.45, -486.13, 2, 0)
	MovementLoopAddLocation(NPC, 908.95, -17.39, -480.01, 2, 0)
	MovementLoopAddLocation(NPC, 903.68, -17.43, -474.69, 2, 0)
	MovementLoopAddLocation(NPC, 898.93, -18.1, -469.21, 2, 1)
	MovementLoopAddLocation(NPC, 898.93, -18.1, -469.21, 2, 20,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 897.92, -18.02, -469.18, 2, 0)
	MovementLoopAddLocation(NPC, 897.23, -17.97, -469.16, 2, 0)
	MovementLoopAddLocation(NPC, 896.41, -17.92, -467.58, 2, 0)
	MovementLoopAddLocation(NPC, 897.06, -18.14, -463.56, 2, 0)
	MovementLoopAddLocation(NPC, 896.12, -17.94, -451.99, 2, 0)
	MovementLoopAddLocation(NPC, 894.88, -15.7, -445.88, 2, 0)
	MovementLoopAddLocation(NPC, 892.67, -14.32, -439.77, 2, 0)
	MovementLoopAddLocation(NPC, 887.25, -13.67, -433.52, 2, 0)
	MovementLoopAddLocation(NPC, 884.09, -13.83, -429.13, 2, 0)
	MovementLoopAddLocation(NPC, 879.12, -14.4, -425.95, 2, 0)
	MovementLoopAddLocation(NPC, 874.6, -15.08, -425.51, 2, 0)
	MovementLoopAddLocation(NPC, 874.2, -15.83, -427.04, 2, 0)
	MovementLoopAddLocation(NPC, 872.59, -18.35, -433.25, 2, 0)
	MovementLoopAddLocation(NPC, 870.54, -18.41, -437.75, 2, 0)
	MovementLoopAddLocation(NPC, 868.2, -18.31, -438.74, 2, 0)
	MovementLoopAddLocation(NPC, 862.31, -18.51, -437.57, 2, 0)
	MovementLoopAddLocation(NPC, 861.37, -18.32, -439.68, 2, 0)
	MovementLoopAddLocation(NPC, 861.37, -18.32, -439.68, 2, 1)
	MovementLoopAddLocation(NPC, 861.37, -18.32, -439.68, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 861.08, -18.3, -440.15, 2, 0)
	MovementLoopAddLocation(NPC, 863.15, -18.22, -443.06, 2, 0)
	MovementLoopAddLocation(NPC, 861.06, -18.87, -447.62, 2, 0)
	MovementLoopAddLocation(NPC, 857.84, -18.48, -453.13, 2, 0)
	MovementLoopAddLocation(NPC, 854.04, -18.9, -459.23, 2, 0)
	MovementLoopAddLocation(NPC, 857.15, -18.87, -465.7, 2, 0)
	MovementLoopAddLocation(NPC, 859.87, -19.05, -468.68, 2, 0)
	MovementLoopAddLocation(NPC, 862.5, -18.2, -472.96, 2, 0)
	MovementLoopAddLocation(NPC, 864.69, -19.02, -478.3, 2, 0)
	MovementLoopAddLocation(NPC, 862.43, -18.76, -480.65, 2, 0)
	MovementLoopAddLocation(NPC, 858.56, -18.66, -481.29, 2, 1)
	MovementLoopAddLocation(NPC, 858.56, -18.66, -481.29, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 856.48, -18.92, -481.13, 2, 0)
	MovementLoopAddLocation(NPC, 856.22, -18.92, -481.88, 2, 0)
	MovementLoopAddLocation(NPC, 857.56, -18.66, -484.3, 2, 0)
	MovementLoopAddLocation(NPC, 860.94, -18.27, -486.47, 2, 0)
	MovementLoopAddLocation(NPC, 866.07, -17.96, -489.35, 2, 0)
	MovementLoopAddLocation(NPC, 870.08, -17.83, -493.97, 2, 0)
	MovementLoopAddLocation(NPC, 868.66, -17.86, -494.93, 2, 1)
	MovementLoopAddLocation(NPC, 868.66, -17.86, -494.93, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 867.82, -17.87, -494.8, 2, 0)
	MovementLoopAddLocation(NPC, 867.67, -17.82, -493.54, 2, 0)
	MovementLoopAddLocation(NPC, 868.62, -17.85, -493.6, 2, 0)
	MovementLoopAddLocation(NPC, 870.12, -17.84, -494.57, 2, 0)
	MovementLoopAddLocation(NPC, 874.55, -17.18, -503.23, 2, 0)
	MovementLoopAddLocation(NPC, 877.5, -17.34, -509.22, 2, 0)
	MovementLoopAddLocation(NPC, 877.71, -17.04, -513.6, 2, 0)
	MovementLoopAddLocation(NPC, 871.72, -16.47, -520.23, 2, 1)
	MovementLoopAddLocation(NPC, 871.72, -16.47, -520.23, 2, 15,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 874.12, -16.27, -519.9, 2, 0)
	MovementLoopAddLocation(NPC, 878.93, -16.4, -519.24, 2, 0)
	MovementLoopAddLocation(NPC, 882.61, -16.35, -518.63, 2, 0)
	MovementLoopAddLocation(NPC, 885.43, -16.27, -517.15, 2, 0)
	MovementLoopAddLocation(NPC, 888.54, -16.54, -511.11, 2, 0)
	MovementLoopAddLocation(NPC, 900.8, -18.02, -502.4, 2, 0)
	MovementLoopAddLocation(NPC, 903.84, -18.11, -501.39, 2, 0)
end


