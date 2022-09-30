--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothscout.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.05 06:09:07
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/MonsterCallouts/BaseGoblin1.lua")

function spawn(NPC)
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
        choice = MakeRandomInt(1,26)
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
 	    PlayFlavor(NPC, "", "", "flex", 0, 0, Spawn, 0)
 	    elseif choice == 7 then
 	    PlayFlavor(NPC, "", "", "sneer", 0, 0, Spawn, 0)
  	    elseif choice == 8 then
 	    PlayFlavor(NPC, "", "", "cackle", 0, 0, Spawn, 0)
  	    elseif choice == 9 then
 	    PlayFlavor(NPC, "", "", "swear", 0, 0, Spawn, 0)
  	    elseif choice == 10 then
 	    PlayFlavor(NPC, "", "", "threaten", 0, 0, Spawn, 0)
  	    elseif choice == 11 then
 	    PlayFlavor(NPC, "", "", "peer", 0, 0, Spawn, 0)
   	    elseif choice == 12 then
 	    PlayFlavor(NPC, "", "", "doubletake", 0, 0, Spawn, 0)
   	    elseif choice == 13 then
 	    PlayFlavor(NPC, "", "", "raisehand", 0, 0, Spawn, 0)
   	    elseif choice == 14 then
 	    PlayFlavor(NPC, "", "", "point", 0, 0, Spawn, 0) 
    	elseif choice == 14 then
 	    PlayFlavor(NPC, "", "", "shiver", 0, 0, Spawn, 0)
     	elseif choice == 15 then
 	    PlayFlavor(NPC, "", "", "crazy", 0, 0, Spawn, 0)
     	elseif choice == 16 then
 	    PlayFlavor(NPC, "", "", "scheme", 0, 0, Spawn, 0)
      	elseif choice == 17 then
 	    PlayFlavor(NPC, "", "", "sneeze", 0, 0, Spawn, 0)
      	elseif choice == 18 then
 	    PlayFlavor(NPC, "", "", "sneer", 0, 0, Spawn, 0)
      	elseif choice == 19 then
 	    PlayFlavor(NPC, "", "", "sulk", 0, 0, Spawn, 0)
      	elseif choice == 20 then
 	    PlayFlavor(NPC, "", "", "smirk", 0, 0, Spawn, 0)
      	elseif choice == 21 then
 	    PlayFlavor(NPC, "", "", "squeal", 0, 0, Spawn, 0)
       	elseif choice == 22 then
 	    PlayFlavor(NPC, "", "", "feint", 0, 0, Spawn, 0)
       	elseif choice == 23 then
 	    PlayFlavor(NPC, "", "", "duck", 0, 0, Spawn, 0)
       	elseif choice == 24 then
 	    PlayFlavor(NPC, "", "", "doh", 0, 0, Spawn, 0)
       	elseif choice == 25 then
 	    PlayFlavor(NPC, "", "", "taunt", 0, 0, Spawn, 0)
       	elseif choice == 26 then
 	    PlayFlavor(NPC, "", "", "tantrum", 0, 0, Spawn, 0)
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
   