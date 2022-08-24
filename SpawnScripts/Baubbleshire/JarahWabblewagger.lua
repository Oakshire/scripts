--[[
    Script Name    : SpawnScripts/Baubbleshire/JarahWabblewagger.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.23 02:08:57
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
    GenericRaceCheckHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericRaceCheckCallout(NPC, Spawn, faction)
    end

function respawn(NPC)
	spawn(NPC)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 826.75, -14.14, -485.98, 2, 0)
	MovementLoopAddLocation(NPC, 828.63, -13.96, -489.01, 2, 0)
	MovementLoopAddLocation(NPC, 827.15, -13.92, -494.63, 2, 0)
	MovementLoopAddLocation(NPC, 825.55, -13.76, -497.39, 2, 0)
	MovementLoopAddLocation(NPC, 822.62, -16.64, -504.96, 2, 0)
	MovementLoopAddLocation(NPC, 824.71, -18.08, -508.9, 2, 0)
	MovementLoopAddLocation(NPC, 833.12, -18.63, -511.03, 2, 1)
	MovementLoopAddLocation(NPC, 833.12, -18.63, -511.03, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 833.12, -18.63, -511.03, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 835.4, -18.64, -510.05, 2, 0)
	MovementLoopAddLocation(NPC, 835.32, -18.49, -507.63, 2, 0)
	MovementLoopAddLocation(NPC, 832.01, -18.23, -504.61, 2, 0)
	MovementLoopAddLocation(NPC, 830, -17.89, -499.82, 2, 0)
	MovementLoopAddLocation(NPC, 832.94, -18.15, -496.53, 2, 0)
	MovementLoopAddLocation(NPC, 835.96, -18.29, -493.19, 2, 1)
	MovementLoopAddLocation(NPC, 835.96, -18.29, -493.19, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 835.96, -18.29, -493.19, 2, 0)
	MovementLoopAddLocation(NPC, 833.6, -17.81, -487.7, 2, 0)
	MovementLoopAddLocation(NPC, 836.29, -17.68, -483.31, 2, 0)
	MovementLoopAddLocation(NPC, 841.21, -17.85, -481.36, 2, 0)
	MovementLoopAddLocation(NPC, 843.52, -17.88, -476.75, 2, 0)
	MovementLoopAddLocation(NPC, 843.94, -17.87, -472.89, 2, 0)
	MovementLoopAddLocation(NPC, 846.45, -18.06, -468.59, 2, 0)
	MovementLoopAddLocation(NPC, 846.87, -17.78, -461.75, 2, 0)
	MovementLoopAddLocation(NPC, 847.07, -18.88, -454.96, 2, 0)
	MovementLoopAddLocation(NPC, 844.93, -19.6, -441.72, 2, 0)
	MovementLoopAddLocation(NPC, 840.9, -19.02, -436.94, 2, 1)
	MovementLoopAddLocation(NPC, 840.9, -19.02, -436.94, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 841.62, -19, -436.15, 2, 0)
	MovementLoopAddLocation(NPC, 845.84, -19.06, -434.28, 2, 1)
	MovementLoopAddLocation(NPC, 845.84, -19.06, -434.28, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 846.37, -19.16, -432.82, 2, 0)
	MovementLoopAddLocation(NPC, 845.18, -18.99, -432.54, 2, 0)
	MovementLoopAddLocation(NPC, 843.86, -18.88, -436.32, 2, 0)
	MovementLoopAddLocation(NPC, 844.35, -19.64, -442.16, 2, 0)
	MovementLoopAddLocation(NPC, 847.09, -18.01, -458.29, 2, 0)
	MovementLoopAddLocation(NPC, 841.59, -15.55, -464.42, 2, 0)
	MovementLoopAddLocation(NPC, 838.33, -12.23, -465.67, 2, 0)
	MovementLoopAddLocation(NPC, 835.1, -10.35, -466.53, 2, 0)
	MovementLoopAddLocation(NPC, 831.94, -9.62, -468.61, 2, 0)
	MovementLoopAddLocation(NPC, 825.58, -9.55, -474.39, 2, 0)
	MovementLoopAddLocation(NPC, 820.37, -9.31, -480.44, 2, 0)
	MovementLoopAddLocation(NPC, 820.82, -9.72, -486.12, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 822.23, -9.7, -486.23, 2, 0)
	MovementLoopAddLocation(NPC, 816.97, -10.29, -485.07, 2, 0)
	MovementLoopAddLocation(NPC, 818.12, -11.37, -490.15, 2, 0)
	MovementLoopAddLocation(NPC, 821.28, -12.94, -493.47, 2, 0)
	MovementLoopAddLocation(NPC, 823.92, -13.16, -493.01, 2, 0)
	MovementLoopAddLocation(NPC, 826.86, -13.81, -491.8, 2, 0)
	MovementLoopAddLocation(NPC, 827.93, -13.78, -489.55, 2, 0)
	MovementLoopAddLocation(NPC, 828.25, -14.33, -486.66, 2, 0)
	MovementLoopAddLocation(NPC, 825.99, -13.95, -484.41, 2, 1,"FaceOut")
	MovementLoopAddLocation(NPC, 825.99, -13.95, -484.41, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 825.99, -13.95, -484.41, 2, 25,"EcologyEmotes")
end

function FaceOut(NPC)
    SetHeading(NPC,"120")
end
