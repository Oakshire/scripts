--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothsaboteur.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.20 03:09:28
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC,2000,"EmoteLoop")
end

function aggro(NPC, Spawn)
    aggrotimer(NPC)
end

function aggrotimer(NPC)
    if IsInCombat(NPC) then
    AddTimer(NPC,8000,"aggrotimer") -- Check is Goblins and Campfire are up
    else 
    Despawn(NPC) --Despawns Goblins and Campfire, which disables update
    zone = GetZone(NPC)
    local Campfire = GetSpawnByLocationID(zone,133776522)
    Despawn(Campfire)
    end
end
 


function respawn(NPC)
	spawn(NPC)
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