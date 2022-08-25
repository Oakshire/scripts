--[[
    Script Name    : SpawnScripts/Baubbleshire/KimbleGasketphizz.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.23 02:08:48
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
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
	MovementLoopAddLocation(NPC, 860.53, -15.17, -505.29, 2, 1)
	MovementLoopAddLocation(NPC, 860.53, -15.17, -505.29, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 860.5, -15.17, -505.36, 2, 1)
	MovementLoopAddLocation(NPC, 860.5, -15.17, -505.36, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 861, -15.17, -505, 2, 0)
	MovementLoopAddLocation(NPC, 864.72, -15.17, -509.22, 2, 0)
	MovementLoopAddLocation(NPC, 863.51, -15.17, -511.91, 2, 0)
	MovementLoopAddLocation(NPC, 862.69, -15.17, -513.48, 2, 0)
	MovementLoopAddLocation(NPC, 864.7, -16.18, -515.47, 2, 0)
	MovementLoopAddLocation(NPC, 868.19, -17.13, -517.97, 2, 0)
	MovementLoopAddLocation(NPC, 869.05, -17.3, -515.17, 2, 0)
	MovementLoopAddLocation(NPC, 866.62, -17.81, -512.7, 2, 0)
	MovementLoopAddLocation(NPC, 864.8, -17.97, -510.86, 2, 0)
	MovementLoopAddLocation(NPC, 864.77, -17.97, -509.95, 2, 0)
	MovementLoopAddLocation(NPC, 862.93, -17.97, -506.83, 2, 0)
	MovementLoopAddLocation(NPC, 858.23, -17.97, -503.98, 2, 1)
	MovementLoopAddLocation(NPC, 858.23, -17.97, -503.98, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 857.31, -17.97, -503.03, 2, 0)
	MovementLoopAddLocation(NPC, 856.02, -17.97, -503.47, 2, 0)
	MovementLoopAddLocation(NPC, 853.01, -18.27, -503.08, 2, 0)
	MovementLoopAddLocation(NPC, 848.2, -18.47, -501.81, 2, 0)
	MovementLoopAddLocation(NPC, 848.2, -18.47, -501.81, 2, 0)
	MovementLoopAddLocation(NPC, 848.13, -18.54, -500.88, 2, 1)
	MovementLoopAddLocation(NPC, 848.13, -18.54, -500.88, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 848.13, -18.54, -500.88, 2, 0)
	MovementLoopAddLocation(NPC, 845.82, -18.57, -502.4, 2, 0)
	MovementLoopAddLocation(NPC, 841.81, -18.65, -505.04, 2, 0)
	MovementLoopAddLocation(NPC, 839.31, -18.7, -507.3, 2, 0)
	MovementLoopAddLocation(NPC, 836.61, -18.83, -511.21, 2, 1)
	MovementLoopAddLocation(NPC, 836.61, -18.83, -511.21, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 836.46, -18.74, -510.16, 2, 0)
	MovementLoopAddLocation(NPC, 840.86, -18.67, -505.74, 2, 0)
	MovementLoopAddLocation(NPC, 844.45, -18.59, -503.95, 2, 0)
	MovementLoopAddLocation(NPC, 847.88, -18.44, -503.7, 2, 0)
	MovementLoopAddLocation(NPC, 852.76, -17.97, -505.53, 2, 0)
	MovementLoopAddLocation(NPC, 853.43, -17.97, -505.99, 2, 0)
	MovementLoopAddLocation(NPC, 855.56, -17.97, -503.57, 2, 0)
	MovementLoopAddLocation(NPC, 858.23, -17.97, -501.79, 2, 0)
	MovementLoopAddLocation(NPC, 861.96, -17.97, -503.14, 2, 0)
	MovementLoopAddLocation(NPC, 863.96, -17.97, -504.41, 2, 1)
	MovementLoopAddLocation(NPC, 863.96, -17.97, -504.41, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 864.54, -17.97, -504.23, 2, 0)
	MovementLoopAddLocation(NPC, 865.55, -17.97, -505.95, 2, 0)
	MovementLoopAddLocation(NPC, 865.01, -17.97, -507.95, 2, 0)
	MovementLoopAddLocation(NPC, 864.42, -17.97, -510.36, 2, 0)
	MovementLoopAddLocation(NPC, 865.92, -17.93, -512.55, 2, 0)
	MovementLoopAddLocation(NPC, 868.54, -17.35, -515.51, 2, 0)
	MovementLoopAddLocation(NPC, 867.77, -17.39, -516.14, 2, 0)
	MovementLoopAddLocation(NPC, 865.91, -16.63, -515.21, 2, 0)
	MovementLoopAddLocation(NPC, 863.01, -15.17, -513.31, 2, 0)
	MovementLoopAddLocation(NPC, 864.44, -15.17, -510.73, 2, 0)
	MovementLoopAddLocation(NPC, 864.53, -15.17, -508.96, 2, 0)
	MovementLoopAddLocation(NPC, 863.2, -15.17, -507.13, 2, 0)
end

