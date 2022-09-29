--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothmysticTaunt.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.06 02:09:44
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGoblin1.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 3
    local level2 = 4
    local difficulty1 = 6
    local hp1 = 75
    local power1 = 55
    local difficulty2 = 6
    local hp2 = 110
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
    
SetPlayerProximityFunction(NPC, 20, "InRange", "LeaveRange")		
EmoteLoop(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function EmoteLoop(NPC,Spawn)
   if IsInCombat(NPC) == false then
        choice = MakeRandomInt(1,13)
        if choice == 1 then
 	    PlayFlavor(NPC, "", "", "neener", 0, 0, Spawn, 0)
        elseif choice == 2 then
 	    PlayFlavor(NPC, "", "", "rude", 0, 0, Spawn, 0)            
        elseif choice == 3 then
 	    PlayFlavor(NPC, "", "", "scratch", 0, 0, Spawn, 0) 
        elseif choice == 4 then
 	    PlayFlavor(NPC, "", "", "dance", 0, 0, Spawn, 0)
 	    elseif choice == 5 then
 	    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn, 0)
 	    elseif choice == 6 then
 	    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn, 0)
 	    elseif choice == 7 then
 	    PlayFlavor(NPC, "", "", "duck", 0, 0, Spawn, 0)
  	    elseif choice == 8 then
 	    PlayFlavor(NPC, "", "", "cackle", 0, 0, Spawn, 0)
  	    elseif choice == 9 then
 	    PlayFlavor(NPC, "", "", "notworthy", 0, 0, Spawn, 0)
  	    elseif choice == 10 then
 	    PlayFlavor(NPC, "", "", "taunt", 0, 0, Spawn, 0)
  	    elseif choice == 11 then
 	    PlayFlavor(NPC, "", "", "peer", 0, 0, Spawn, 0)
   	    elseif choice == 12 then
 	    PlayFlavor(NPC, "", "", "doubletake", 0, 0, Spawn, 0)
   	    elseif choice == 13 then
 	    PlayFlavor(NPC, "", "", "confused", 0, 0, Spawn, 0)
 	    end
 	    AddTimer(NPC,MakeRandomInt(7000,9000),"EmoteLoop")    
        else
 	    AddTimer(NPC,MakeRandomInt(10000,11000),"EmoteLoop") 
 	    end
end

function InRange(NPC,Spawn)
if IsInCombat(NPC) == false then
    SetTarget(NPC,Spawn)
    FaceTarget(NPC,Spawn)
    end
 end



function aggro(NPC,Spawn)
         SetTarget(NPC,Spawn)
end   
   