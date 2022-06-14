--[[
    Script Name    : SpawnScripts/QeynosHarbor/Razclaw.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.13 01:06:05
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
  
function Door1(NPC,Spawn)
    local door = GetSpawn(NPC, 2210352)
    UseWidget(door)
end

 function Drink(NPC)
    PlayAnimation(NPC,11422)
    AddTimer(NPC,8000, "Drink2")
end

function Drink2(NPC)
  choice = math.random(1,3)   
        if choice == 1 then    
        PlayAnimation(NPC,891)
        elseif choice == 2 then    
        PlayAnimation(NPC,11422)
        else
        PlayAnimation(NPC,11668)
        end            
    AddTimer(NPC,6000, "Drink3")
end

function Drink3(NPC)
    PlayAnimation(NPC,11422)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 653.42, -19.72, -143.91, 2, 22)
	MovementLoopAddLocation(NPC, 668.07, -20.64, -126.81, 2, 0)
	MovementLoopAddLocation(NPC, 678.67, -21, -114.87, 2, 0)
	MovementLoopAddLocation(NPC, 690.43, -21.17, -90.61, 2, 15)
	MovementLoopAddLocation(NPC, 690.45, -21.11, -88.79, 2, 0)
	MovementLoopAddLocation(NPC, 697.98, -21.12, -84.35, 2, 0)
	MovementLoopAddLocation(NPC, 708.85, -21.02, -75.78, 2, 0)
	MovementLoopAddLocation(NPC, 722.17, -21.26, -62.78, 2, 0)
	MovementLoopAddLocation(NPC, 783.35, -21.27, -62.33, 2, 0)
	MovementLoopAddLocation(NPC, 814.75, -21.04, -63.97, 2, 0)
	MovementLoopAddLocation(NPC, 823.66, -23.08, -66.23, 2, 0)
	MovementLoopAddLocation(NPC, 839.38, -25.3, -67.88, 2, 0)
	MovementLoopAddLocation(NPC, 874.07, -25.38, -66.55, 2, 0)
	MovementLoopAddLocation(NPC, 889, -25.43, -62.76, 2, 0)
	MovementLoopAddLocation(NPC, 894.16, -25.39, -57.92, 2, 0)
	MovementLoopAddLocation(NPC, 898.43, -23.76, -43.71, 2, 0)
	MovementLoopAddLocation(NPC, 903.49, -25.29, -29.13, 2, 0)
	MovementLoopAddLocation(NPC, 906.58, -25.37, -20.26, 2, 0)
	MovementLoopAddLocation(NPC, 909.18, -25.4, -5.59, 2, 0)
	MovementLoopAddLocation(NPC, 908.66, -25.44, 5.6, 2, 0)
	MovementLoopAddLocation(NPC, 908.24, -25.51, 14.67, 2, 0)
	MovementLoopAddLocation(NPC, 914.84, -25.48, 18.01, 2, 0)
	MovementLoopAddLocation(NPC, 921.38, -25.47, 19.13, 2, 0)
	MovementLoopAddLocation(NPC, 923.42, -25.52, 27.12, 2, 22)
	MovementLoopAddLocation(NPC, 923.63, -25.53, 27.91, 2, 0)
	MovementLoopAddLocation(NPC, 924.46, -25.51, 24.66, 2, 0)
	MovementLoopAddLocation(NPC, 920.71, -25.49, 22.72, 2, 0)
	MovementLoopAddLocation(NPC, 915.35, -25.51, 20.85, 2, 0)
	MovementLoopAddLocation(NPC, 906, -25.45, 18.23, 2, 0)
	MovementLoopAddLocation(NPC, 901.3, -25.41, 30.5, 2, 0)
	MovementLoopAddLocation(NPC, 895.61, -25.39, 41.64, 2, 0)
	MovementLoopAddLocation(NPC, 888.73, -25.41, 47.35, 2, 0)
	MovementLoopAddLocation(NPC, 883.89, -25.37, 47.33, 2, 0)
	MovementLoopAddLocation(NPC, 871.76, -25.39, 45.5, 2, 0)
	MovementLoopAddLocation(NPC, 859.94, -25.38, 43.15, 2, 0)
	MovementLoopAddLocation(NPC, 857.78, -25.37, 42.71, 2, 0)
	MovementLoopAddLocation(NPC, 836.03, -23.31, 45.68, 2, 0)
	MovementLoopAddLocation(NPC, 834.82, -23.32, 48.5, 2, 0)
	MovementLoopAddLocation(NPC, 832.65, -23.33, 56.64, 2, 0)
	MovementLoopAddLocation(NPC, 827.16, -23.31, 65.42, 2, 0)
	MovementLoopAddLocation(NPC, 822.98, -23.31, 65.25, 2, 0)
	MovementLoopAddLocation(NPC, 820.16, -23.34, 63.47, 2, 2,"Door1")
	MovementLoopAddLocation(NPC, 815.24, -23.27, 60.92, 2, 0)
	MovementLoopAddLocation(NPC, 812.08, -23.27, 62.12, 2, 0)
	MovementLoopAddLocation(NPC, 806.01, -23.77, 63.76, 2, 0)
	MovementLoopAddLocation(NPC, 804.1, -23.77, 62.88, 2, 1)
	MovementLoopAddLocation(NPC, 804.1, -23.77, 62.88, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 804.13, -23.77, 61.93, 2, 0)
	MovementLoopAddLocation(NPC, 805.53, -23.77, 63.39, 2, 0)
	MovementLoopAddLocation(NPC, 810.14, -23.27, 62.7, 2, 0)
	MovementLoopAddLocation(NPC, 815.68, -23.27, 61.58, 2, 2,"Door1")
	MovementLoopAddLocation(NPC, 820.68, -23.33, 63.38, 2, 0)
	MovementLoopAddLocation(NPC, 825.92, -23.34, 52.34, 2, 0)
	MovementLoopAddLocation(NPC, 829.15, -23.34, 45.74, 2, 0)
	MovementLoopAddLocation(NPC, 834.77, -23.31, 41.78, 2, 0)
	MovementLoopAddLocation(NPC, 857.54, -25.4, 38.37, 2, 0)
	MovementLoopAddLocation(NPC, 885.8, -25.38, 42.01, 2, 0)
	MovementLoopAddLocation(NPC, 891.46, -25.42, 36.8, 2, 0)
	MovementLoopAddLocation(NPC, 898.92, -25.41, 18.74, 2, 0)
	MovementLoopAddLocation(NPC, 901.89, -25.42, -5.7, 2, 0)
	MovementLoopAddLocation(NPC, 897.89, -25.42, -23.64, 2, 0)
	MovementLoopAddLocation(NPC, 893.04, -23.44, -39.22, 2, 0)
	MovementLoopAddLocation(NPC, 887.8, -25.4, -52.03, 2, 0)
	MovementLoopAddLocation(NPC, 878.61, -25.41, -58.48, 2, 0)
	MovementLoopAddLocation(NPC, 857.98, -25.39, -60.68, 2, 0)
	MovementLoopAddLocation(NPC, 831.1, -24.73, -60.82, 2, 0)
	MovementLoopAddLocation(NPC, 801.96, -20.68, -59.86, 2, 0)
	MovementLoopAddLocation(NPC, 793.14, -21.08, -56.65, 2, 0)
	MovementLoopAddLocation(NPC, 786.18, -21.27, -53.25, 2, 0)
	MovementLoopAddLocation(NPC, 739.67, -21.39, -49.45, 2, 0)
	MovementLoopAddLocation(NPC, 727.89, -21.39, -43.6, 2, 0)
	MovementLoopAddLocation(NPC, 729.53, -21.39, -42.08, 2, 22)
	MovementLoopAddLocation(NPC, 731.53, -21.39, -40.22, 2, 0)
	MovementLoopAddLocation(NPC, 729.51, -21.39, -37.75, 2, 0)
	MovementLoopAddLocation(NPC, 732.46, -20.89, -11.61, 2, 22)
	MovementLoopAddLocation(NPC, 733.24, -20.84, -9.93, 2, 0)
	MovementLoopAddLocation(NPC, 732.61, -20.79, -8.75, 2, 0)
	MovementLoopAddLocation(NPC, 729.41, -20.71, -8.9, 2, 0)
	MovementLoopAddLocation(NPC, 713.11, -20.64, -12.29, 2, 0)
	MovementLoopAddLocation(NPC, 713.52, -21.06, -34.61, 2, 0)
	MovementLoopAddLocation(NPC, 717.9, -21.39, -56.98, 2, 0)
	MovementLoopAddLocation(NPC, 698.83, -21.11, -82.88, 2, 0)
	MovementLoopAddLocation(NPC, 670.77, -20.5, -122.85, 2, 0)
	MovementLoopAddLocation(NPC, 663.08, -20.24, -130.57, 2, 0)
end


