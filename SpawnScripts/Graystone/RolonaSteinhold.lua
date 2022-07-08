--[[
    Script Name    : SpawnScripts/Graystone/RolonaSteinhold.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.07 06:07:41
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/UnknownLanguage.lua")
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")	
waypoints(NPC)
end



function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if not HasLanguage(Spawn,3)then
    Garbled(NPC,Spawn)
    else
    GenericEcologyHail(NPC, Spawn, faction)
    end
end


function InRange(NPC, Spawn) 
if GetFactionAmount(Spawn,11)<0 then
    PlayFlavor(NPC,"","","shakefist",0,0)
    FaceTarget(NPC,Spawn)
    end   
 end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 902.09, -25.45, -117.2, 2, 1)
	MovementLoopAddLocation(NPC, 902.09, -25.45, -117.2, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 902.09, -25.45, -117.2, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 902.42, -25.45, -117.81, 2, 0)
	MovementLoopAddLocation(NPC, 901.96, -25.45, -116.05, 2, 0)
	MovementLoopAddLocation(NPC, 900.84, -25.45, -111.79, 2, 0)
	MovementLoopAddLocation(NPC, 895.53, -25.45, -109.23, 2, 0)
	MovementLoopAddLocation(NPC, 892.22, -25.45, -106.98, 2, 0)
	MovementLoopAddLocation(NPC, 890.12, -25.45, -103.73, 2, 0)
	MovementLoopAddLocation(NPC, 883.08, -25.04, -105.38, 2, 1)
	MovementLoopAddLocation(NPC, 883.08, -25.04, -105.38, 2, 28,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 879.25, -24.97, -101.48, 2, 0)
	MovementLoopAddLocation(NPC, 876.37, -24.95, -101.92, 2, 0)
	MovementLoopAddLocation(NPC, 876.92, -23.68, -105.91, 2, 0)
	MovementLoopAddLocation(NPC, 867.65, -20, -107.64, 2, 0)
	MovementLoopAddLocation(NPC, 867.77, -20.01, -112.21, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 868.44, -20.06, -116.45, 2, 0)
	MovementLoopAddLocation(NPC, 866.01, -20.06, -119.77, 2, 0)
	MovementLoopAddLocation(NPC, 866.19, -20.56, -126.54, 2, 1)
	MovementLoopAddLocation(NPC, 866.19, -20.56, -126.54, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 866.19, -20.56, -126.54, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 866.24, -20.56, -127.12, 2, 0)
	MovementLoopAddLocation(NPC, 865.11, -20.06, -120.13, 2, 0)
	MovementLoopAddLocation(NPC, 868.06, -20.06, -117.38, 2, 0)
	MovementLoopAddLocation(NPC, 868.3, -20.06, -116.37, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 867.83, -20.01, -111.88, 2, 0)
	MovementLoopAddLocation(NPC, 867.21, -20.01, -108.72, 2, 0)
	MovementLoopAddLocation(NPC, 876.97, -23.66, -107.1, 2, 0)
	MovementLoopAddLocation(NPC, 877.88, -24.97, -101.55, 2, 0)
	MovementLoopAddLocation(NPC, 879.28, -24.97, -101.63, 2, 0)
	MovementLoopAddLocation(NPC, 881.03, -24.97, -104.81, 2, 0)
	MovementLoopAddLocation(NPC, 889.51, -25.45, -103.99, 2, 0)
	MovementLoopAddLocation(NPC, 893.44, -25.45, -108.23, 2, 0)
	MovementLoopAddLocation(NPC, 894.11, -25.45, -117.38, 2, 0)
	MovementLoopAddLocation(NPC, 897.36, -25.45, -120.55, 2, 0)
	MovementLoopAddLocation(NPC, 894.97, -25.45, -131.14, 2, 0)
	MovementLoopAddLocation(NPC, 892.03, -25.45, -137.72, 2, 1)
	MovementLoopAddLocation(NPC, 892.03, -25.45, -137.72, 2, 18,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 892.93, -25.45, -138.8, 2, 0)
	MovementLoopAddLocation(NPC, 896.04, -25.45, -127.76, 2, 0)
	MovementLoopAddLocation(NPC, 897.81, -25.45, -120.49, 2, 0)
	MovementLoopAddLocation(NPC, 901.22, -25.45, -117.4, 2, 0)
end


function Door(NPC,Spawn)
    local door = GetSpawn(NPC, 2350075)
    UseWidget(door)
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
        PlayFlavor(NPC,"","","confused",0,0)
        else
        PlayAnimation(NPC,11668)
        end            
    AddTimer(NPC,6000, "Drink3")
end

function Drink3(NPC)
    PlayAnimation(NPC,11422)
end