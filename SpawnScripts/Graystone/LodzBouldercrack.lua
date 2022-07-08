--[[
    Script Name    : SpawnScripts/Graystone/LodzBouldercrack.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.07 06:07:25
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


function InRange(NPC, Spawn) 
if GetFactionAmount(Spawn,11)<0 then
    GenericEcologyHail(NPC, Spawn, faction)
end
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 847.06, -25.15, -161.23, 2, 1)
	MovementLoopAddLocation(NPC, 847.06, -25.15, -161.23, 2, 35,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 847.4, -25.07, -161.86, 2, 0)
	MovementLoopAddLocation(NPC, 853.3, -23.72, -163.25, 2, 0)
	MovementLoopAddLocation(NPC, 859.91, -22.08, -161.79, 2, 1)
	MovementLoopAddLocation(NPC, 859.91, -22.08, -161.79, 2, 35,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 860.74, -22.15, -162.88, 2, 0)
	MovementLoopAddLocation(NPC, 857.47, -22.86, -163.97, 2, 0)
	MovementLoopAddLocation(NPC, 849.56, -24.42, -165.63, 2, 0)
	MovementLoopAddLocation(NPC, 843.41, -25.01, -163.61, 2, 0)
	MovementLoopAddLocation(NPC, 841.27, -25.31, -161.56, 2, 0)
	MovementLoopAddLocation(NPC, 835.04, -25.49, -156.3, 2, 0)
	MovementLoopAddLocation(NPC, 835.05, -25.01, -154.09, 2, 0)
	MovementLoopAddLocation(NPC, 844.79, -24.44, -153.4, 2, 0)
	MovementLoopAddLocation(NPC, 857.57, -23.97, -153.51, 2, 0)
	MovementLoopAddLocation(NPC, 871.75, -23.66, -153.26, 2, 0)
	MovementLoopAddLocation(NPC, 883.66, -24.85, -150.87, 2, 0)
	MovementLoopAddLocation(NPC, 893.56, -24.92, -152.3, 2, 0)
	MovementLoopAddLocation(NPC, 904.1, -25.01, -153.99, 2, 1)
	MovementLoopAddLocation(NPC, 904.1, -25.01, -153.99, 2, 35,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 905.39, -25.03, -153.55, 2, 0)
	MovementLoopAddLocation(NPC, 904.06, -24.97, -151.55, 2, 0)
	MovementLoopAddLocation(NPC, 900.19, -24.96, -144.98, 2, 0)
	MovementLoopAddLocation(NPC, 902.28, -25.01, -139.56, 2, 0)
	MovementLoopAddLocation(NPC, 901.53, -25.02, -138.42, 2, 0)
	MovementLoopAddLocation(NPC, 897.39, -24.99, -136.1, 2, 0)
	MovementLoopAddLocation(NPC, 895.12, -25.45, -134.77, 2, 0)
	MovementLoopAddLocation(NPC, 894.4, -25.45, -132.54, 2, 0)
	MovementLoopAddLocation(NPC, 894.43, -25.45, -124.36, 2, 0)
	MovementLoopAddLocation(NPC, 892.21, -25.45, -121.75, 2, 1)
	MovementLoopAddLocation(NPC, 892.21, -25.45, -121.75, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 892.63, -25.45, -122.04, 2, 0)
	MovementLoopAddLocation(NPC, 892.63, -25.45, -122.04, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 892.63, -25.45, -122.04, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 894.78, -25.45, -124.14, 2, 0)
	MovementLoopAddLocation(NPC, 893.4, -25.45, -139.21, 2, 0)
	MovementLoopAddLocation(NPC, 895.41, -24.91, -140.91, 2, 0)
	MovementLoopAddLocation(NPC, 898.24, -24.94, -143.25, 2, 0)
	MovementLoopAddLocation(NPC, 901.4, -24.98, -141.9, 2, 0)
	MovementLoopAddLocation(NPC, 901.16, -24.98, -140.48, 2, 0)
	MovementLoopAddLocation(NPC, 895.68, -22.54, -137.45, 2, 0)
	MovementLoopAddLocation(NPC, 890.2, -22.01, -136.2, 2, 0)
	MovementLoopAddLocation(NPC, 879.57, -22.21, -136.51, 2, 1)
	MovementLoopAddLocation(NPC, 879.57, -22.21, -136.51, 2, 35,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 879.37, -22.21, -137.51, 2, 0)
	MovementLoopAddLocation(NPC, 878.43, -22.21, -142.37, 2, 0)
	MovementLoopAddLocation(NPC, 874.04, -22.21, -144.16, 2, 0)
	MovementLoopAddLocation(NPC, 869.14, -22.21, -145.34, 2, 0)
	MovementLoopAddLocation(NPC, 856.82, -22.21, -143.58, 2, 1)
	MovementLoopAddLocation(NPC, 856.82, -22.21, -143.58, 2, 35,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 855.26, -22.21, -142.79, 2, 0)
	MovementLoopAddLocation(NPC, 855.26, -22.21, -141.77, 2, 0)
	MovementLoopAddLocation(NPC, 862.36, -22.21, -147.3, 2, 0)
	MovementLoopAddLocation(NPC, 863.88, -22, -149.19, 2, 0)
	MovementLoopAddLocation(NPC, 864, -22.71, -150.99, 2, 0)
	MovementLoopAddLocation(NPC, 848.75, -24.23, -151.16, 2, 0)
	MovementLoopAddLocation(NPC, 838.14, -24.92, -151.24, 2, 0)
	MovementLoopAddLocation(NPC, 833.78, -25.01, -153.45, 2, 1)
	MovementLoopAddLocation(NPC, 833.78, -25.01, -153.45, 2, 18,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 834.69, -25.49, -155.81, 2, 0)
	MovementLoopAddLocation(NPC, 838.01, -25.22, -161.89, 2, 0)
	MovementLoopAddLocation(NPC, 843.78, -24.47, -167.4, 2, 0)
	MovementLoopAddLocation(NPC, 846.93, -24.86, -164.01, 2, 0)
end


function Drink(NPC)
    PlayAnimation(NPC,11422)
    AddTimer(NPC,8000, "Drink2")
end

function Drink2(NPC)
  choice = math.random(1,4)   
        if choice == 1 then    
        PlayAnimation(NPC,891)
        elseif choice == 2 then    
        PlayAnimation(NPC,11422)
        elseif choice == 3 then    
        PlayFlavor(NPC,"","","ponder",0,0)
        else
        PlayAnimation(NPC,11668)
        end            
    AddTimer(NPC,6000, "Drink3")
end

function Drink3(NPC)
    PlayAnimation(NPC,11422)
end
