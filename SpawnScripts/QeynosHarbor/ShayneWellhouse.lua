--[[
    Script Name    : SpawnScripts/QeynosHarbor/ShayneWellhouse.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.12 04:06:32
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
 

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 903.34, -25.35, -62.77, 2, 15)
	MovementLoopAddLocation(NPC, 899.06, -25.48, -61.51, 2, 0)
	MovementLoopAddLocation(NPC, 897.75, -25.45, -55.11, 2, 0)
	MovementLoopAddLocation(NPC, 902.25, -23.49, -36.16, 2, 0)
	MovementLoopAddLocation(NPC, 906.57, -25.37, -11.81, 2, 0)
	MovementLoopAddLocation(NPC, 904.85, -25.37, 9.54, 2, 0)
	MovementLoopAddLocation(NPC, 899.5, -25.37, 32.59, 2, 0)
	MovementLoopAddLocation(NPC, 907.69, -25.3, 43.09, 2, 0)
	MovementLoopAddLocation(NPC, 920.13, -25.49, 52.6, 2, 0)
	MovementLoopAddLocation(NPC, 922.14, -25.49, 60.83, 2, 0)
	MovementLoopAddLocation(NPC, 922.49, -25.56, 68.3, 2, 0)
	MovementLoopAddLocation(NPC, 930.47, -25.56, 72.23, 2, 0)
	MovementLoopAddLocation(NPC, 928.38, -25.43, 84.87, 2, 0)
	MovementLoopAddLocation(NPC, 932.41, -25.42, 88.27, 2, 0)
	MovementLoopAddLocation(NPC, 931.19, -25.27, 92.46, 2, 0)
	MovementLoopAddLocation(NPC, 960.55, -25.27, 104.87, 2, 0)
	MovementLoopAddLocation(NPC, 966.96, -25.45, 100.66, 2, 0)
	MovementLoopAddLocation(NPC, 971.67, -25.43, 110.25, 2, 0)
	MovementLoopAddLocation(NPC, 976.77, -25.45, 119.81, 2, 35)
	MovementLoopAddLocation(NPC, 977.11, -25.45, 119.49, 2, 0)
	MovementLoopAddLocation(NPC, 974.04, -25.56, 96.5, 2, 0)
	MovementLoopAddLocation(NPC, 976.42, -25.56, 87.2, 2, 0)
	MovementLoopAddLocation(NPC, 977.55, -25.56, 76.46, 2, 0)
	MovementLoopAddLocation(NPC, 976.49, -25.56, 74.53, 2, 0)
	MovementLoopAddLocation(NPC, 971.03, -25.56, 73.32, 2, 0)
	MovementLoopAddLocation(NPC, 962.26, -25.47, 95.88, 2, 0)
	MovementLoopAddLocation(NPC, 959.68, -25.27, 105.62, 2, 0)
	MovementLoopAddLocation(NPC, 957.26, -25.27, 111.35, 2, 0)
	MovementLoopAddLocation(NPC, 947.6, -25.27, 111.07, 2, 0)
	MovementLoopAddLocation(NPC, 932.41, -25.27, 104.14, 2, 0)
	MovementLoopAddLocation(NPC, 926.99, -25.27, 102.48, 2, 0)
	MovementLoopAddLocation(NPC, 927.07, -25.27, 102.18, 2, 35)
	MovementLoopAddLocation(NPC, 927.95, -25.27, 97.34, 2, 0)
	MovementLoopAddLocation(NPC, 912.67, -25.32, 91.38, 2, 0)
	MovementLoopAddLocation(NPC, 910.36, -25.36, 84.37, 2, 0)
	MovementLoopAddLocation(NPC, 919.35, -25.49, 61.51, 2, 0)
	MovementLoopAddLocation(NPC, 907.75, -25.31, 49.97, 2, 0)
	MovementLoopAddLocation(NPC, 896.25, -25.4, 40.67, 2, 0)
	MovementLoopAddLocation(NPC, 901, -25.41, 9.77, 2, 0)
	MovementLoopAddLocation(NPC, 901.16, -25.44, -6.62, 2, 0)
    MovementLoopAddLocation(NPC, 898.01, -25.34, -26.66, 2, 0)
	MovementLoopAddLocation(NPC, 891.12, -25.37, -48.57, 2, 0)
	MovementLoopAddLocation(NPC, 883.34, -25.36, -47.14, 2, 35)
	MovementLoopAddLocation(NPC, 896.26, -25.47, -63.87, 2, 0)
end


    