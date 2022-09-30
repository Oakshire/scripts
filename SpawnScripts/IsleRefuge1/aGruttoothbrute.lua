--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothbrute.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.09 03:09:26
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGoblin2.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 4
    local level2 = 5
    local difficulty1 = 6
    local hp1 = 110
    local power1 = 55
    local difficulty2 = 6
    local hp2 = 130
    local power2 = 65
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end
    EmoteLoop(NPC,Spawn)
if GetSpawnLocationID(NPC)==133775625 then
    waypoints(NPC)
end
end

function hailed(NPC, Spawn)
end


function EmoteLoop(NPC,Spawn)
   if IsInCombat(NPC) == false and HasMoved(NPC)==false then
        choice = MakeRandomInt(1,10)
        if choice == 1 then
 	    PlayFlavor(NPC, "", "", "treaten", 0, 0, Spawn, 0)
        elseif choice == 2 then
 	    PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn, 0)            
        elseif choice == 3 then
 	    PlayFlavor(NPC, "", "", "frustrated", 0, 0, Spawn, 0) 
        elseif choice == 4 then
 	    PlayFlavor(NPC, "", "", "peer", 0, 0, Spawn, 0)
 	    elseif choice == 5 then
 	    PlayFlavor(NPC, "", "", "feint", 0, 0, Spawn, 0)
 	    elseif choice == 6 then
 	    PlayFlavor(NPC, "", "", "confused", 0, 0, Spawn, 0)
 	    elseif choice == 7 then
 	    PlayFlavor(NPC, "", "", "treaten", 0, 0, Spawn, 0)
 	    elseif choice == 8 then
 	    PlayFlavor(NPC, "", "", "stare", 0, 0, Spawn, 0)
 	    elseif choice == 9 then
 	    PlayFlavor(NPC, "", "", "brandish", 0, 0, Spawn, 0)
 	    elseif choice == 10 then
 	    PlayFlavor(NPC, "", "", "cackle", 0, 0, Spawn, 0)
 	    end
 	    AddTimer(NPC,MakeRandomInt(7000,9000),"EmoteLoop")    
        else
 	    AddTimer(NPC,MakeRandomInt(10000,11000),"EmoteLoop") 
 	    end
   
    end   



function respawn(NPC)
	spawn(NPC)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 249.32, -0.5, -163.56, 2, 15)
	MovementLoopAddLocation(NPC, 249.46, -0.54, -162.96, 2, 0)
	MovementLoopAddLocation(NPC, 251.58, -1, -162.96, 2, 0)
	MovementLoopAddLocation(NPC, 247.73, -0.02, -169.86, 2, 0)
	MovementLoopAddLocation(NPC, 245.82, -0.01, -173.24, 2, 0)
	MovementLoopAddLocation(NPC, 237.8, -0.2, -168.96, 2, 0)
	MovementLoopAddLocation(NPC, 227.89, -0.8, -166.62, 2, 0)
	MovementLoopAddLocation(NPC, 223.22, -0.78, -165.64, 2, 0)
	MovementLoopAddLocation(NPC, 215.64, -0.95, -159.65, 2, 0)
	MovementLoopAddLocation(NPC, 208.51, -0.92, -163.36, 2, 0)
	MovementLoopAddLocation(NPC, 205.97, -0.91, -165.77, 2, 0)
	MovementLoopAddLocation(NPC, 200.07, -0.89, -175.64, 2, 0)
	MovementLoopAddLocation(NPC, 194, -0.87, -177.41, 2, 0)
	MovementLoopAddLocation(NPC, 185.43, -0.83, -179.25, 2, 0)
	MovementLoopAddLocation(NPC, 176.48, -0.8, -184.84, 2, 0)
	MovementLoopAddLocation(NPC, 172.19, -0.78, -194.84, 2, 0)
	MovementLoopAddLocation(NPC, 167.09, -0.76, -201.03, 2, 0)
	MovementLoopAddLocation(NPC, 162.7, -0.75, -203.27, 2, 0)
	MovementLoopAddLocation(NPC, 152.02, -0.59, -214.22, 2, 20)
	MovementLoopAddLocation(NPC, 150.4, -0.6, -214.43, 2, 0)
	MovementLoopAddLocation(NPC, 150.53, -0.54, -210.13, 2, 0)
	MovementLoopAddLocation(NPC, 147.23, -0.69, -204.46, 2, 0)
	MovementLoopAddLocation(NPC, 142.69, -0.67, -202.24, 2, 0)
	MovementLoopAddLocation(NPC, 136.63, -0.65, -198.76, 2, 0)
	MovementLoopAddLocation(NPC, 133.3, -0.62, -195.27, 2, 0)
	MovementLoopAddLocation(NPC, 129.56, -0.63, -191, 2, 0)
	MovementLoopAddLocation(NPC, 125.48, -0.61, -183.18, 2, 0)
	MovementLoopAddLocation(NPC, 123.64, -0.61, -179.16, 2, 0)
	MovementLoopAddLocation(NPC, 122.53, -0.6, -174.43, 2, 0)
	MovementLoopAddLocation(NPC, 123.09, -0.37, -167.58, 2, 0)
	MovementLoopAddLocation(NPC, 119.02, -0.4, -163.78, 2, 15)
	MovementLoopAddLocation(NPC, 117.65, -0.4, -163.45, 4, 0)
	MovementLoopAddLocation(NPC, 93.72, -0.31, -163.94, 4, 0)
	MovementLoopAddLocation(NPC, 86.21, 0.15, -161.29, 4, 0)
	MovementLoopAddLocation(NPC, 77.94, -0.2, -161.71, 4, 0)
	MovementLoopAddLocation(NPC, 70.11, -2.57, -160.74, 4, 0)
	MovementLoopAddLocation(NPC, 67.2, -2.56, -161.86, 4, 15)
	MovementLoopAddLocation(NPC, 55.93, -2.52, -167.36, 4, 0)
	MovementLoopAddLocation(NPC, 51.39, -2.5, -169.81, 4, 0)
	MovementLoopAddLocation(NPC, 50.4, -2.5, -167.02, 4, 0)
	MovementLoopAddLocation(NPC, 51.37, -2.5, -170.5, 4, 0)
	MovementLoopAddLocation(NPC, 49.13, -2.5, -164.59, 4, 0)
	MovementLoopAddLocation(NPC, 51.8, -2.5, -169.37, 4, 0)
	MovementLoopAddLocation(NPC, 53.23, -2.51, -165.44, 4, 0)
	MovementLoopAddLocation(NPC, 52.28, -2.51, -169.5, 4, 0)
	MovementLoopAddLocation(NPC, 51.38, -2.5, -168.86, 4, 15)
	MovementLoopAddLocation(NPC, 55.1, -2.16, -170.6, 2, 10000)
end


