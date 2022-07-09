--[[
    Script Name    : SpawnScripts/Graystone/HannaFurycleaver.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.08 12:07:10
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)        
    GenericEcologyHail(NPC, Spawn, faction)
    end


function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 929.53, -22.4, -109.12, 2, 1)
	MovementLoopAddLocation(NPC, 929.53, -22.4, -109.12, 2, 35)
	MovementLoopAddLocation(NPC, 926.49, -22.4, -110.18, 2, 0)
	MovementLoopAddLocation(NPC, 920.04, -22.4, -112.43, 2, 0)
	MovementLoopAddLocation(NPC, 916.16, -22.4, -112.38, 2, 0)
	MovementLoopAddLocation(NPC, 908.41, -22.4, -110.15, 2, 0)
	MovementLoopAddLocation(NPC, 905.97, -22.24, -111.21, 2, 1)
	MovementLoopAddLocation(NPC, 905.97, -22.24, -111.21, 2, 18)
	MovementLoopAddLocation(NPC, 904.49, -22.3, -111.73, 2, 0)
	MovementLoopAddLocation(NPC, 902.68, -22.07, -115.22, 2, 0)
	MovementLoopAddLocation(NPC, 904.43, -19.81, -120.23, 2, 0)
	MovementLoopAddLocation(NPC, 907.51, -20.04, -123.87, 2, 2,"Door1")
	MovementLoopAddLocation(NPC, 911.2, -20.06, -126.37, 2, 0)
	MovementLoopAddLocation(NPC, 914.87, -20.06, -129.5, 2, 0)
	MovementLoopAddLocation(NPC, 917.13, -20.06, -128.98, 2, 0)
	MovementLoopAddLocation(NPC, 920.07, -20.06, -127.78, 2, 1)
	MovementLoopAddLocation(NPC, 920.07, -20.06, -127.78, 2, 55)
	MovementLoopAddLocation(NPC, 918.75, -20.06, -128.35, 2, 0)
	MovementLoopAddLocation(NPC, 916.71, -20.06, -129.23, 2, 0)
	MovementLoopAddLocation(NPC, 910.97, -20.06, -125.98, 2, 2,"Door1")
	MovementLoopAddLocation(NPC, 906.93, -20.04, -122.13, 2, 0)
	MovementLoopAddLocation(NPC, 902.45, -22.31, -113.72, 2, 0)
	MovementLoopAddLocation(NPC, 902.62, -22.4, -105.03, 2, 0)
	MovementLoopAddLocation(NPC, 900.51, -22.4, -95.84, 2, 15)
	MovementLoopAddLocation(NPC, 893.97, -22.61, -91.47, 2, 1)
	MovementLoopAddLocation(NPC, 893.97, -22.61, -91.47, 2, 25)
	MovementLoopAddLocation(NPC, 893, -22.61, -90.87, 2, 0)
	MovementLoopAddLocation(NPC, 896.97, -22.61, -93.89, 2, 0)
	MovementLoopAddLocation(NPC, 900.64, -22.4, -96.01, 2, 0)
	MovementLoopAddLocation(NPC, 901.95, -22.4, -100.07, 2, 0)
	MovementLoopAddLocation(NPC, 899.22, -22.37, -107.51, 2, 0)
	MovementLoopAddLocation(NPC, 892.7, -22.3, -109.55, 2, 0)
	MovementLoopAddLocation(NPC, 891.14, -22.32, -115.98, 2, 0)
	MovementLoopAddLocation(NPC, 892.66, -21.47, -119.74, 2, 0)
	MovementLoopAddLocation(NPC, 888.71, -20.01, -120.59, 2, 2,"Door2")
	MovementLoopAddLocation(NPC, 884.74, -20.06, -121.5, 2, 0)
	MovementLoopAddLocation(NPC, 883.01, -20.06, -119.41, 2, 0)
	MovementLoopAddLocation(NPC, 882.19, -20.06, -116.02, 2, 0)
	MovementLoopAddLocation(NPC, 882.59, -20.06, -116.21, 2, 1,"FaceKarg")
	MovementLoopAddLocation(NPC, 882.59, -20.06, -116.21, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 882.59, -20.06, -116.21, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 882.59, -20.06, -116.21, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 882.94, -20.06, -116.76, 2, 0)
	MovementLoopAddLocation(NPC, 882.35, -20.06, -118.47, 2, 0)
	MovementLoopAddLocation(NPC, 885.7, -20.06, -123.24, 2, 2,"Door3")
	MovementLoopAddLocation(NPC, 890.63, -20.53, -121.49, 2, 0)
	MovementLoopAddLocation(NPC, 892.71, -21.47, -120.5, 2, 0)
	MovementLoopAddLocation(NPC, 893.37, -21.44, -118.63, 2, 0)
	MovementLoopAddLocation(NPC, 892.59, -22.32, -115.97, 2, 0)
	MovementLoopAddLocation(NPC, 894.36, -22.32, -115.52, 2, 0)
	MovementLoopAddLocation(NPC, 896.49, -22.32, -117.59, 2, 0)
	MovementLoopAddLocation(NPC, 900.22, -22.31, -116.05, 2, 0)
	MovementLoopAddLocation(NPC, 906.75, -22.4, -110.38, 2, 0)
	MovementLoopAddLocation(NPC, 917.49, -22.4, -113.41, 2, 0)
	MovementLoopAddLocation(NPC, 925.32, -22.4, -113.69, 2, 0)
end

function FaceKarg(NPC)
	SpawnSet(NPC, "heading", "310")
end

function Door1(NPC,Spawn)
    local door = GetSpawn(NPC, 2350070)
    UseWidget(door)
end

function Door2(NPC,Spawn)
    local door = GetSpawn(NPC, 2350073)
    UseWidget(door)
end

function Door3(NPC,Spawn)
    local door = GetSpawn(NPC, 2350072)
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
        PlayFlavor(NPC,"","","hungry",0,0)
        else
        PlayAnimation(NPC,11668)
        end            
    AddTimer(NPC,6000, "Drink3")
end

function Drink3(NPC)
        PlayAnimation(NPC,11422)
end
