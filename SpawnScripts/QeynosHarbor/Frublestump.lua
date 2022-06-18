--[[
    Script Name    : SpawnScripts/QeynosHarbor/Frublestump.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.12 08:06:12
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
	MovementLoopAddLocation(NPC, 803.53, -20.64, -63.73, 2, 0)
	MovementLoopAddLocation(NPC, 812.62, -20.46, -63.6, 2, 0)
	MovementLoopAddLocation(NPC, 830.3, -24.52, -64.21, 2, 0)
	MovementLoopAddLocation(NPC, 849.69, -25.36, -65.27, 2, 0)
	MovementLoopAddLocation(NPC, 865.69, -25.51, -70.22, 2, 15)
	MovementLoopAddLocation(NPC, 865.7, -25.42, -68.36, 2, 0)
	MovementLoopAddLocation(NPC, 878.06, -25.36, -65.49, 2, 0)
	MovementLoopAddLocation(NPC, 888.32, -25.41, -62.65, 2, 0)
	MovementLoopAddLocation(NPC, 896.07, -25.4, -55.6, 2, 0)
	MovementLoopAddLocation(NPC, 900.19, -23.48, -42.03, 2, 0)
	MovementLoopAddLocation(NPC, 909.11, -25.41, -17.44, 2, 0)
	MovementLoopAddLocation(NPC, 910.04, -25.43, -4.81, 2, 0)
	MovementLoopAddLocation(NPC, 908.5, -25.43, 4.85, 2, 0)
	MovementLoopAddLocation(NPC, 904.14, -25.42, 23.17, 2, 0)
	MovementLoopAddLocation(NPC, 901.34, -25.42, 31.32, 2, 0)
	MovementLoopAddLocation(NPC, 909.63, -25.39, 36.97, 2, 20)
	MovementLoopAddLocation(NPC, 910.37, -25.39, 36.83, 2, 0)
	MovementLoopAddLocation(NPC, 909.63, -25.31, 43.03, 2, 0)
	MovementLoopAddLocation(NPC, 914.07, -25.36, 47.84, 2, 0)
	MovementLoopAddLocation(NPC, 917.88, -25.4, 49.39, 2, 0)
	MovementLoopAddLocation(NPC, 920.11, -25.49, 60.74, 2, 0)
	MovementLoopAddLocation(NPC, 908.67, -25.44, 74.29, 2, 0)
	MovementLoopAddLocation(NPC, 901.12, -25.33, 84.26, 2, 20)
	MovementLoopAddLocation(NPC, 920.71, -25.38, 86.89, 2, 15)
	MovementLoopAddLocation(NPC, 921.33, -25.47, 72.95, 2, 0)
	MovementLoopAddLocation(NPC, 924.37, -25.56, 62.02, 2, 0)
	MovementLoopAddLocation(NPC, 924.27, -25.49, 56.65, 2, 0)
	MovementLoopAddLocation(NPC, 902.77, -25.37, 47.91, 2, 0)
	MovementLoopAddLocation(NPC, 892.93, -25.39, 44.35, 2, 0)
	MovementLoopAddLocation(NPC, 886.74, -25.38, 47.18, 2, 0)
	MovementLoopAddLocation(NPC, 877.09, -25.41, 47.16, 2, 0)
	MovementLoopAddLocation(NPC, 865.11, -25.37, 55.39, 2, 20)
	MovementLoopAddLocation(NPC, 864.66, -25.43, 27.11, 2, 0)
	MovementLoopAddLocation(NPC, 864.81, -25.43, 23.99, 2, 1)
	MovementLoopAddLocation(NPC, 864.12, -25.43, 23.88, 2, 15,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 857.65, -25.47, 21.59, 2, 0)
	MovementLoopAddLocation(NPC, 849.17, -25.46, 13.7, 2, 0)
	MovementLoopAddLocation(NPC, 844.85, -25.46, 7.13, 2, 0)
	MovementLoopAddLocation(NPC, 839.6, -25.44, -4.14, 2, 0)
	MovementLoopAddLocation(NPC, 835.99, -25.43, -8.46, 2, 0)
	MovementLoopAddLocation(NPC, 833.07, -25.43, -10.83, 2, 15)
	MovementLoopAddLocation(NPC, 832.36, -25.43, -10.98, 2, 0)
	MovementLoopAddLocation(NPC, 832.19, -25.43, -12.36, 2, 0)
	MovementLoopAddLocation(NPC, 834.47, -25.43, -20.59, 2, 0)
	MovementLoopAddLocation(NPC, 838.95, -25.43, -24.95, 2, 0)
	MovementLoopAddLocation(NPC, 845.56, -25.44, -27.19, 2, 0)
	MovementLoopAddLocation(NPC, 854.73, -25.47, -31.22, 2, 0)
	MovementLoopAddLocation(NPC, 869.01, -25.47, -33.81, 2, 0)
	MovementLoopAddLocation(NPC, 879.88, -25.46, -30.51, 2, 0)
	MovementLoopAddLocation(NPC, 894.9, -25.52, -23.65, 2, 0)
	MovementLoopAddLocation(NPC, 896.53, -25.46, -22.87, 2, 0)
	MovementLoopAddLocation(NPC, 892.7, -23.68, -41.56, 2, 0)
	MovementLoopAddLocation(NPC, 889.73, -25.38, -49.67, 2, 0)
	MovementLoopAddLocation(NPC, 880.11, -25.41, -46.07, 2, 0)
	MovementLoopAddLocation(NPC, 878.73, -25.57, -44.91, 2, 0)
	MovementLoopAddLocation(NPC, 872.02, -25.43, -46.79, 2, 0)
	MovementLoopAddLocation(NPC, 865.45, -25.43, -47.07, 2, 0)
	MovementLoopAddLocation(NPC, 854.2, -25.42, -45.96, 2, 0)
	MovementLoopAddLocation(NPC, 846.26, -25.43, -44.89, 2, 0)
	MovementLoopAddLocation(NPC, 833.15, -25.47, -44.28, 2, 1)
	MovementLoopAddLocation(NPC, 833.15, -25.47, -44.28, 2, 15,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 834.73, -25.46, -45.14, 2, 0)
	MovementLoopAddLocation(NPC, 838.94, -25.4, -45.54, 2, 0)
	MovementLoopAddLocation(NPC, 843.28, -25.42, -44.9, 2, 20)
	MovementLoopAddLocation(NPC, 845.49, -25.44, -44.57, 2, 0)
	MovementLoopAddLocation(NPC, 856.31, -25.42, -46.45, 2, 0)
	MovementLoopAddLocation(NPC, 882.42, -25.44, -44.53, 2, 20)
	MovementLoopAddLocation(NPC, 882.79, -25.5, -43.92, 2, 0)
	MovementLoopAddLocation(NPC, 882.91, -25.31, -48.17, 2, 0)
	MovementLoopAddLocation(NPC, 882.37, -25.45, -54.84, 2, 0)
	MovementLoopAddLocation(NPC, 873.96, -25.45, -58.65, 2, 0)
	MovementLoopAddLocation(NPC, 854.18, -25.45, -58.72, 2, 0)
	MovementLoopAddLocation(NPC, 799.73, -20.8, -58.84, 2, 0)
	MovementLoopAddLocation(NPC, 790.06, -21.08, -51.09, 2, 0)
	MovementLoopAddLocation(NPC, 772.44, -21.53, -48.49, 2, 0)
	MovementLoopAddLocation(NPC, 775.64, -20.69, -37.64, 2, 0)
	MovementLoopAddLocation(NPC, 775.03, -20.69, -37.27, 2, 1)
	MovementLoopAddLocation(NPC, 775.03, -20.69, -37.27, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 775.03, -20.69, -37.27, 2, 1)
	MovementLoopAddLocation(NPC, 774.16, -20.7, -36.74, 2, 0)
	MovementLoopAddLocation(NPC, 769.19, -21.17, -43, 2, 0)
	MovementLoopAddLocation(NPC, 759.21, -20.75, -27.19, 2, 0)
	MovementLoopAddLocation(NPC, 752.6, -21.08, -15.37, 2, 0)
	MovementLoopAddLocation(NPC, 727.54, -20.94, -17.22, 2, 0)
	MovementLoopAddLocation(NPC, 733.19, -21.39, -29.43, 2, 15)
	MovementLoopAddLocation(NPC, 733.62, -21.39, -30.37, 2, 0)
	MovementLoopAddLocation(NPC, 728.71, -21.37, -56.93, 2, 0)
	MovementLoopAddLocation(NPC, 752.22, -21.13, -66.01, 2, 15)
	MovementLoopAddLocation(NPC, 751.10, -21.09, -66.43, 2, 0)
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


