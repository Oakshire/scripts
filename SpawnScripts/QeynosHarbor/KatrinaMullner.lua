--[[
    Script Name    : SpawnScripts/QeynosHarbor/KatrinaMullner.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.13 03:06:02
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
    waypoints(NPC)
end

function hailed(NPC, Spawn)
GenericRaceCheckHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
GenericRaceCheckCallout(NPC, Spawn, faction)
end

 function Door1(NPC,Spawn)
    local door = GetSpawn(NPC, 2210349)
    UseWidget(door)
end 

 function Door2(NPC,Spawn)
    local door = GetSpawn(NPC, 2210348)
    UseWidget(door)
end 


 function BankDoor(NPC,Spawn)
    local door = GetSpawn(NPC, 2210357)
    UseWidget(door)
end 

 function TavernDoor(NPC,Spawn)
    local door = GetSpawn(NPC, 2210347)
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
	MovementLoopAddLocation(NPC, 819.85, -14.17, 38.59, 2, 65)
	MovementLoopAddLocation(NPC, 820.46, -14.15, 39.16, 2, 0)
	MovementLoopAddLocation(NPC, 819.93, -14.17, 36.98, 2, 2,"Door1")
	MovementLoopAddLocation(NPC, 822.58, -14.11, 34.37, 2, 0)
	MovementLoopAddLocation(NPC, 823.98, -14.09, 31.5, 2, 0)
	MovementLoopAddLocation(NPC, 825.32, -14.06, 29.72, 2, 0)
	MovementLoopAddLocation(NPC, 828.68, -16.24, 26, 2, 0)
	MovementLoopAddLocation(NPC, 831.43, -16.17, 26.72, 2, 0)
	MovementLoopAddLocation(NPC, 832.37, -16.13, 28.75, 2, 0)
	MovementLoopAddLocation(NPC, 827.97, -18.72, 33.63, 2, 0)
	MovementLoopAddLocation(NPC, 825.72, -18.79, 33.4, 2, 0)
	MovementLoopAddLocation(NPC, 824.5, -18.83, 31.8, 2, 0)
	MovementLoopAddLocation(NPC, 824.97, -18.82, 30.08, 2, 0)
	MovementLoopAddLocation(NPC, 829.46, -20.98, 25.19, 2, 0)
	MovementLoopAddLocation(NPC, 831.03, -20.93, 25.98, 2, 0)
	MovementLoopAddLocation(NPC, 832.2, -20.88, 28.97, 2, 0)
	MovementLoopAddLocation(NPC, 828.25, -23.47, 33.7, 2, 0)
	MovementLoopAddLocation(NPC, 827.5, -23.48, 34.95, 2, 2,"Door2")
	MovementLoopAddLocation(NPC, 830.98, -23.39, 38.75, 2, 0)
	MovementLoopAddLocation(NPC, 834.67, -23.31, 41.84, 2, 0)
	MovementLoopAddLocation(NPC, 858.07, -25.38, 38.83, 2, 0)
	MovementLoopAddLocation(NPC, 862.49, -25.43, 38.23, 2, 0)
	MovementLoopAddLocation(NPC, 876.85, -25.41, 41.25, 2, 0)
	MovementLoopAddLocation(NPC, 884.79, -25.4, 41.76, 2, 0)
	MovementLoopAddLocation(NPC, 890.94, -25.41, 37.68, 2, 0)
	MovementLoopAddLocation(NPC, 894.93, -25.4, 31.41, 2, 0)
	MovementLoopAddLocation(NPC, 898.71, -25.37, 23.41, 2, 0)
	MovementLoopAddLocation(NPC, 901.5, -25.39, 9.95, 2, 0)
	MovementLoopAddLocation(NPC, 902, -25.38, -14.81, 2, 0)
	MovementLoopAddLocation(NPC, 898.5, -25.34, -27.06, 2, 0)
	MovementLoopAddLocation(NPC, 892.03, -24.85, -46.11, 2, 0)
	MovementLoopAddLocation(NPC, 888.45, -25.37, -53.26, 2, 0)
	MovementLoopAddLocation(NPC, 881.17, -25.43, -56.41, 2, 0)
	MovementLoopAddLocation(NPC, 870.85, -25.38, -61.24, 2, 0)
	MovementLoopAddLocation(NPC, 807.44, -20.4, -59.26, 2, 0)
	MovementLoopAddLocation(NPC, 796, -21, -58.96, 2, 0)
	MovementLoopAddLocation(NPC, 784.71, -21.34, -56.34, 2, 0)
	MovementLoopAddLocation(NPC, 777.38, -21.07, -44.45, 2, 0)
	MovementLoopAddLocation(NPC, 765.77, -20.88, -37.76, 2, 0)
	MovementLoopAddLocation(NPC, 761.04, -20.79, -34.6, 2, 0)
	MovementLoopAddLocation(NPC, 760.16, -20.72, -27.12, 2, 0)
	MovementLoopAddLocation(NPC, 761.25, -20.89, -17.9, 2, 0)
	MovementLoopAddLocation(NPC, 769.46, -20.72, -5.05, 2, 1)
	MovementLoopAddLocation(NPC, 769.46, -20.72, -5.05, 2, 15,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 770.18, -20.64, -2.93, 2, 0)
	MovementLoopAddLocation(NPC, 762.6, -20.79, -0.11, 2, 0)
	MovementLoopAddLocation(NPC, 739.53, -20.97, -7.75, 2, 1)
	MovementLoopAddLocation(NPC, 739.53, -20.97, -7.75, 2, 15,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 738.51, -20.94, -7.7, 2, 0)
	MovementLoopAddLocation(NPC, 731.51, -20.96, -13.96, 2, 0)
	MovementLoopAddLocation(NPC, 718.39, -20.65, -13.28, 2, 0)
	MovementLoopAddLocation(NPC, 708.7, -20.51, 4, 2, 15)
	MovementLoopAddLocation(NPC, 705.54, -20.64, -13.92, 2, 0)
	MovementLoopAddLocation(NPC, 701.53, -20.64, -26.13, 2, 0)
	MovementLoopAddLocation(NPC, 701.43, -21.04, -38.86, 2, 0)
	MovementLoopAddLocation(NPC, 697.32, -20.05, -41.73, 2, 0)
	MovementLoopAddLocation(NPC, 696.63, -20.05, -41.73, 2, 2,"BankDoor")
	MovementLoopAddLocation(NPC, 689.24, -20.05, -42.27, 2, 0)
	MovementLoopAddLocation(NPC, 685.97, -20.05, -41.17, 2, 15)
	MovementLoopAddLocation(NPC, 684.66, -20.05, -40.73, 2, 0)
	MovementLoopAddLocation(NPC, 683.94, -20.05, -51.38, 2, 15)
	MovementLoopAddLocation(NPC, 689.91, -20.05, -42.87, 2, 0)
	MovementLoopAddLocation(NPC, 691.21, -20.05, -42.32, 2, 2,"BankDoor")
	MovementLoopAddLocation(NPC, 696.65, -20.05, -41.45, 2, 0)
	MovementLoopAddLocation(NPC, 704.21, -21.09, -45.91, 2, 0)
	MovementLoopAddLocation(NPC, 727.49, -21.39, -39.33, 2, 1)
	MovementLoopAddLocation(NPC, 727.49, -21.39, -39.33, 2, 15,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 728.8, -21.39, -38.92, 2, 0)
	MovementLoopAddLocation(NPC, 732.49, -21.39, -46.83, 2, 0)
	MovementLoopAddLocation(NPC, 746, -21.39, -47.06, 2, 0)
	MovementLoopAddLocation(NPC, 755.37, -21.63, -58.42, 2, 0)
	MovementLoopAddLocation(NPC, 782.55, -21.25, -63.28, 2, 0)
	MovementLoopAddLocation(NPC, 842.27, -25.36, -64.43, 2, 0)
	MovementLoopAddLocation(NPC, 880.36, -25.36, -63.57, 2, 0)
	MovementLoopAddLocation(NPC, 897.13, -24.59, -47.09, 2, 0)
	MovementLoopAddLocation(NPC, 902.38, -24.28, -31.5, 2, 0)
	MovementLoopAddLocation(NPC, 906.89, -25.37, -19.16, 2, 0)
	MovementLoopAddLocation(NPC, 907.56, -25.37, -2.55, 2, 0)
	MovementLoopAddLocation(NPC, 904.24, -25.38, 18.9, 2, 0)
	MovementLoopAddLocation(NPC, 899.22, -25.37, 33.46, 2, 0)
	MovementLoopAddLocation(NPC, 887.18, -25.37, 46.51, 2, 0)
	MovementLoopAddLocation(NPC, 857.86, -25.37, 42.81, 2, 0)
	MovementLoopAddLocation(NPC, 836.15, -23.31, 45.51, 2, 0)
	MovementLoopAddLocation(NPC, 828.01, -23.37, 40.24, 2, 0)
	MovementLoopAddLocation(NPC, 816.87, -23.28, 37.13, 2, 15)
	MovementLoopAddLocation(NPC, 815.54, -23.25, 40.47, 2, 2,"TavernDoor")
	MovementLoopAddLocation(NPC, 813.26, -23.27, 45.09, 2, 0)
	MovementLoopAddLocation(NPC, 815.27, -23.27, 54.66, 2, 0)
	MovementLoopAddLocation(NPC, 818.09, -23.27, 56.62, 2, 1)
	MovementLoopAddLocation(NPC, 818.09, -23.27, 56.62, 2, 40,"Drink")
	MovementLoopAddLocation(NPC, 814.74, -23.27, 53.88, 2, 0)
	MovementLoopAddLocation(NPC, 813.26, -23.27, 51.45, 2, 0)
	MovementLoopAddLocation(NPC, 814.26, -23.27, 48.4, 2, 0)
	MovementLoopAddLocation(NPC, 813.73, -23.27, 45.26, 2, 2,"TavernDoor")
	MovementLoopAddLocation(NPC, 815.73, -23.25, 40.66, 2, 0)
	MovementLoopAddLocation(NPC, 819.19, -23.29, 38.24, 2, 0)
	MovementLoopAddLocation(NPC, 823.47, -23.32, 41.17, 2, 0)
	MovementLoopAddLocation(NPC, 826.31, -23.37, 42.76, 2, 15)
	MovementLoopAddLocation(NPC, 830.71, -23.39, 38.47, 2, 2,"Door2")
	MovementLoopAddLocation(NPC, 826.86, -23.5, 34.57, 2, 0)
	MovementLoopAddLocation(NPC, 831.73, -20.9, 28.66, 2, 0)
	MovementLoopAddLocation(NPC, 831.02, -20.93, 26.99, 2, 0)
	MovementLoopAddLocation(NPC, 829.71, -20.96, 26.58, 2, 0)
	MovementLoopAddLocation(NPC, 824.84, -18.82, 31.08, 2, 0)
	MovementLoopAddLocation(NPC, 827.43, -18.73, 34.4, 2, 0)
	MovementLoopAddLocation(NPC, 832.66, -16.12, 28.73, 2, 0)
	MovementLoopAddLocation(NPC, 831.37, -16.17, 26.31, 2, 0)
	MovementLoopAddLocation(NPC, 824.8, -14.07, 31.2, 2, 0)
	MovementLoopAddLocation(NPC, 823.78, -14.09, 32.68, 2, 0)
	MovementLoopAddLocation(NPC, 823.63, -14.09, 32.84, 2, 2,"Door1")
	MovementLoopAddLocation(NPC, 819.59, -14.18, 37.34, 2, 0)
end


