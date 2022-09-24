--[[
    Script Name    : SpawnScripts/GrimgashsLair/aGruttoothwitchdoctor.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.20 02:09:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddTimer(NPC,2000,"EmoteLoop")
end

function EmoteLoop(NPC,Spawn)
   if IsInCombat(NPC) == false and HasMoved(NPC) == false then
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

function respawn(NPC)
	spawn(NPC)
end