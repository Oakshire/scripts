--[[
    Script Name    : SpawnScripts/Baubbleshire/BinkOakshire.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.22 06:08:29
    Script Purpose : 
                   : 
--]]


dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericRaceCheckHail(NPC, Spawn)
end

function InRange(NPC,Spawn)
    GenericRaceCheckCallout(NPC, Spawn)
    end
    
function respawn(NPC)
		spawn(NPC)
	end
	

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 825.68, -13.66, -480.12, 2, 1)
	MovementLoopAddLocation(NPC, 825.68, -13.66, -480.12, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 828.99, -14.17, -480.19, 2, 0)
	MovementLoopAddLocation(NPC, 833.44, -13.85, -477.59, 2, 0)
	MovementLoopAddLocation(NPC, 838.01, -13.85, -472.33, 2, 0)
	MovementLoopAddLocation(NPC, 844.38, -17.3, -463.66, 2, 0)
	MovementLoopAddLocation(NPC, 848.67, -18.1, -460.64, 2, 0)
	MovementLoopAddLocation(NPC, 856.35, -18.8, -461.6, 2, 0)
	MovementLoopAddLocation(NPC, 865.18, -18.94, -461.5, 2, 1)
	MovementLoopAddLocation(NPC, 865.18, -18.94, -461.5, 2, 15,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 865.59, -18.94, -461.37, 2, 0)
	MovementLoopAddLocation(NPC, 866.05, -18.92, -461.9, 2, 0)
	MovementLoopAddLocation(NPC, 860.26, -18.9, -464.16, 2, 0)
	MovementLoopAddLocation(NPC, 858.62, -18.89, -465.03, 2, 0)
	MovementLoopAddLocation(NPC, 854.01, -18.54, -462.16, 2, 0)
	MovementLoopAddLocation(NPC, 856.57, -19.48, -457.7, 2, 0)
	MovementLoopAddLocation(NPC, 858.59, -18.45, -454.33, 2, 0)
	MovementLoopAddLocation(NPC, 861.81, -19.05, -448.98, 2, 0)
	MovementLoopAddLocation(NPC, 871.5, -18.69, -444.66, 2, 0)
	MovementLoopAddLocation(NPC, 874.73, -18.5, -445.33, 2, 0)
	MovementLoopAddLocation(NPC, 877.07, -18.45, -446.66, 2, 2,"Door1")
	MovementLoopAddLocation(NPC, 879.98, -18.31, -444.31, 2, 0)
	MovementLoopAddLocation(NPC, 880.85, -18.31, -443.21, 2, 1)
	MovementLoopAddLocation(NPC, 880.85, -18.31, -443.21, 2, 2,"Hello")
	MovementLoopAddLocation(NPC, 881.68, -18.31, -441.3, 2, 0)
	MovementLoopAddLocation(NPC, 880.96, -18.31, -438.88, 2, 0)
	MovementLoopAddLocation(NPC, 879.86, -18.31, -435.75, 2, 1)
	MovementLoopAddLocation(NPC, 879.86, -18.31, -435.75, 2, 33,"Drink")
	MovementLoopAddLocation(NPC, 879.86, -18.31, -435.75, 2, 33,"Drink")
	MovementLoopAddLocation(NPC, 880.12, -18.31, -436.76, 2, 0)
	MovementLoopAddLocation(NPC, 881.16, -18.31, -438.86, 2, 0)
	MovementLoopAddLocation(NPC, 882.22, -18.31, -440.82, 2, 0)
	MovementLoopAddLocation(NPC, 880.51, -18.31, -443.44, 2, 2,"Door1")
	MovementLoopAddLocation(NPC, 877.27, -18.45, -447.1, 2, 0)
	MovementLoopAddLocation(NPC, 879.66, -18.79, -450.5, 2, 0)
	MovementLoopAddLocation(NPC, 881.93, -18.46, -448.34, 2, 1)
	MovementLoopAddLocation(NPC, 881.93, -18.46, -448.34, 2, 33,"Drink")
	MovementLoopAddLocation(NPC, 881.74, -18.67, -450.27, 2, 0)
	MovementLoopAddLocation(NPC, 882.96, -18.7, -450.88, 2, 0)
	MovementLoopAddLocation(NPC, 886.54, -18.82, -454.9, 2, 0)
	MovementLoopAddLocation(NPC, 891.34, -18.87, -457.63, 2, 0)
	MovementLoopAddLocation(NPC, 893.68, -18.95, -460.51, 2, 0)
	MovementLoopAddLocation(NPC, 892.02, -18.88, -464.41, 2, 0)
	MovementLoopAddLocation(NPC, 888.04, -18.67, -470.37, 2, 0)
	MovementLoopAddLocation(NPC, 890.6, -18.09, -474.82, 2, 2,"Door2")
	MovementLoopAddLocation(NPC, 892.21, -17.61, -476.04, 2, 0)
	MovementLoopAddLocation(NPC, 894.07, -18.01, -478.3, 2, 0)
	MovementLoopAddLocation(NPC, 892.33, -18.01, -482.48, 2, 1)
	MovementLoopAddLocation(NPC, 892.33, -18.01, -482.48, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 892.44, -18.01, -482.77, 2, 0)
	MovementLoopAddLocation(NPC, 898.66, -18.01, -478.84, 2, 1)
	MovementLoopAddLocation(NPC, 898.66, -18.01, -478.84, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 898.54, -18.01, -479.73, 2, 0)
	MovementLoopAddLocation(NPC, 897.73, -18.01, -478.58, 2, 0)
	MovementLoopAddLocation(NPC, 895.07, -18.01, -477.27, 2, 2,"Door2")
	MovementLoopAddLocation(NPC, 893.08, -17.78, -476.63, 2, 0)
	MovementLoopAddLocation(NPC, 889.82, -18.35, -472.71, 2, 0)
	MovementLoopAddLocation(NPC, 894.18, -18.19, -469.34, 2, 0)
	MovementLoopAddLocation(NPC, 896.52, -18.09, -464.6, 2, 1)
	MovementLoopAddLocation(NPC, 896.52, -18.09, -464.6, 2, 15,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 895.37, -18.27, -463.98, 2, 0)
	MovementLoopAddLocation(NPC, 894.3, -15.67, -445.3, 2, 0)
	MovementLoopAddLocation(NPC, 891.19, -13.82, -436.7, 2, 0)
	MovementLoopAddLocation(NPC, 888.97, -13.6, -431.54, 2, 1)
	MovementLoopAddLocation(NPC, 888.97, -13.6, -431.54, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 887.53, -13.52, -431.75, 2, 0)
	MovementLoopAddLocation(NPC, 881.88, -14.16, -428.47, 2, 0)
	MovementLoopAddLocation(NPC, 879.12, -14.56, -426.87, 2, 0)
	MovementLoopAddLocation(NPC, 872.22, -14.34, -423.14, 2, 0)
	MovementLoopAddLocation(NPC, 862.67, -12.97, -423.1, 2, 1)
	MovementLoopAddLocation(NPC, 862.67, -12.97, -423.1, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 861.55, -12.87, -423.34, 2, 0)
	MovementLoopAddLocation(NPC, 861.76, -12.89, -422.67, 2, 0)
	MovementLoopAddLocation(NPC, 868.74, -13.63, -423.34, 2, 0)
	MovementLoopAddLocation(NPC, 875.87, -14.95, -425.59, 2, 0)
	MovementLoopAddLocation(NPC, 872.69, -18.49, -433.79, 2, 0)
	MovementLoopAddLocation(NPC, 872.69, -18.49, -433.79, 2, 0)
	MovementLoopAddLocation(NPC, 868.06, -18.42, -436.67, 2, 0)
	MovementLoopAddLocation(NPC, 861.85, -18.68, -437.21, 2, 1)
	MovementLoopAddLocation(NPC, 861.85, -18.68, -437.21, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 861.12, -19.06, -436.04, 2, 0)
	MovementLoopAddLocation(NPC, 866.5, -18.43, -436.95, 2, 0)
	MovementLoopAddLocation(NPC, 870.58, -18.51, -440.88, 2, 0)
	MovementLoopAddLocation(NPC, 867.15, -18.57, -443.39, 2, 0)
	MovementLoopAddLocation(NPC, 862.3, -18.74, -446.56, 2, 0)
	MovementLoopAddLocation(NPC, 858.77, -18.72, -451.66, 2, 0)
	MovementLoopAddLocation(NPC, 857.4, -18.47, -453.8, 2, 0)
	MovementLoopAddLocation(NPC, 852.81, -18.61, -460.7, 2, 0)
	MovementLoopAddLocation(NPC, 850.25, -18.28, -465.16, 2, 0)
	MovementLoopAddLocation(NPC, 845.42, -17.95, -470.93, 2, 0)
	MovementLoopAddLocation(NPC, 843.03, -17.91, -474.02, 2, 1)
	MovementLoopAddLocation(NPC, 843.03, -17.91, -474.02, 2, 15,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 842.76, -17.89, -473.13, 2, 0)
	MovementLoopAddLocation(NPC, 842.38, -17.76, -476.52, 2, 0)
	MovementLoopAddLocation(NPC, 841.9, -17.81, -480.27, 2, 0)
	MovementLoopAddLocation(NPC, 837.78, -17.66, -482.43, 2, 0)
	MovementLoopAddLocation(NPC, 835.06, -17.7, -483.99, 2, 0)
	MovementLoopAddLocation(NPC, 832.94, -17.91, -491.49, 2, 0)
	MovementLoopAddLocation(NPC, 832.75, -18.12, -496.38, 2, 0)
	MovementLoopAddLocation(NPC, 829.65, -17.87, -499.31, 2, 0)
	MovementLoopAddLocation(NPC, 829.03, -18.14, -504.96, 2, 0)
	MovementLoopAddLocation(NPC, 827.53, -18.15, -508.24, 2, 0)
	MovementLoopAddLocation(NPC, 824.72, -18.03, -508.71, 2, 0)
	MovementLoopAddLocation(NPC, 822.8, -17, -506.07, 2, 0)
	MovementLoopAddLocation(NPC, 823.71, -15.35, -502.12, 2, 0)
	MovementLoopAddLocation(NPC, 825.17, -13.84, -498.14, 2, 0)
	MovementLoopAddLocation(NPC, 827.23, -13.95, -494.84, 2, 0)
	MovementLoopAddLocation(NPC, 828.58, -13.93, -490.83, 2, 0)
	MovementLoopAddLocation(NPC, 827.74, -14.47, -485.41, 2, 0)
	MovementLoopAddLocation(NPC, 828.14, -14.22, -480.96, 2, 0)
	MovementLoopAddLocation(NPC, 827.55, -13.69, -476.93, 2, 1)
	MovementLoopAddLocation(NPC, 827.55, -13.69, -476.93, 2, 15,"EcologyEmotes")
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
        PlayFlavor(NPC,"","","hungry",0,0)
        else
        PlayAnimation(NPC,11668)
        end            
    AddTimer(NPC,6000, "Drink3")
end

function Drink3(NPC)
    PlayAnimation(NPC,11422)
end	

function Door1(NPC,Spawn)
    local door = GetSpawn(NPC, 2380074)
    UseWidget(door)
end

function Door2(NPC,Spawn)
    local door = GetSpawn(NPC, 2380073)
    UseWidget(door)
end

function Hello(NPC)
    PlayFlavor(NPC,"","","hello",0,0)
    local Estella = GetSpawn(NPC, 2380027)
    local Bregun = GetSpawn(NPC, 2380028)
    FaceTarget(Estella, NPC)
    FaceTarget(Bregun, NPC)
    AddTimer(NPC,1200,"BarHello")
end 

function BarHello(NPC)
    local Estella = GetSpawn(NPC, 2380027)
    local Bregun = GetSpawn(NPC, 2380028)
    PlayFlavor(Estella,"","","curtsey",0,0)
    PlayFlavor(Bregun,"","","agree",0,0)
end