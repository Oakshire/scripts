--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothaggressor.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.08 03:09:47
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
EmoteLoop(NPC,Spawn)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end


function EmoteLoop(NPC,Spawn)
if GetSpawnLocationID(NPC)~= 133775216 then
   if IsInCombat(NPC) == false then
        choice = MakeRandomInt(1,13)
        if choice == 1 then
 	    PlayFlavor(NPC, "", "", "neener", 0, 0, Spawn, 0)
        elseif choice == 2 then
 	    PlayFlavor(NPC, "", "", "rude", 0, 0, Spawn, 0)            
        elseif choice == 3 then
 	    PlayFlavor(NPC, "", "", "flirt", 0, 0, Spawn, 0) 
        elseif choice == 4 then
 	    PlayFlavor(NPC, "", "", "woo", 0, 0, Spawn, 0)
 	    elseif choice == 5 then
 	    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn, 0)
 	    elseif choice == 6 then
 	    PlayFlavor(NPC, "", "", "flex", 0, 0, Spawn, 0)
 	    elseif choice == 7 then
 	    PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn, 0)
  	    elseif choice == 8 then
 	    PlayFlavor(NPC, "", "", "cackle", 0, 0, Spawn, 0)
  	    elseif choice == 9 then
 	    PlayFlavor(NPC, "", "", "feint", 0, 0, Spawn, 0)
  	    elseif choice == 10 then
 	    PlayFlavor(NPC, "", "", "squeal", 0, 0, Spawn, 0)
  	    elseif choice == 11 then
 	    PlayFlavor(NPC, "", "", "peer", 0, 0, Spawn, 0)
   	    elseif choice == 12 then
 	    PlayFlavor(NPC, "", "", "flirt", 0, 0, Spawn, 0)
   	    elseif choice == 13 then
 	    PlayFlavor(NPC, "", "", "square", 0, 0, Spawn, 0)
 	    end
 	    AddTimer(NPC,MakeRandomInt(7000,9000),"EmoteLoop")    
        end
    else
    waypoints(NPC)        
        
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 273.13, -4.03, 3.96, 2, 0)
	MovementLoopAddLocation(NPC, 268.24, -3.99, 5.03, 2, 0)
	MovementLoopAddLocation(NPC, 263.98, -3.97, 4.71, 2, 0)
	MovementLoopAddLocation(NPC, 258.54, -3.95, 1.59, 2, 0)
	MovementLoopAddLocation(NPC, 257.3, -4.28, -2.56, 2, 0)
	MovementLoopAddLocation(NPC, 258.76, -4.73, -10.85, 2, 15)
	MovementLoopAddLocation(NPC, 259, -4.8, -10.79, 2, 0)
	MovementLoopAddLocation(NPC, 258.53, -4.66, -9.12, 2, 0)
	MovementLoopAddLocation(NPC, 258.34, -4.6, -6.6, 2, 0)
	MovementLoopAddLocation(NPC, 261.82, -5.08, -6.56, 2, 0)
	MovementLoopAddLocation(NPC, 264.1, -5.08, -7.3, 2, 0)
	MovementLoopAddLocation(NPC, 267.38, -5.08, -12.13, 2, 0)
	MovementLoopAddLocation(NPC, 269.47, -5.08, -15.12, 2, 15)
	MovementLoopAddLocation(NPC, 269.61, -5.08, -16.26, 2, 0)
	MovementLoopAddLocation(NPC, 270.12, -5.08, -14.52, 2, 0)
	MovementLoopAddLocation(NPC, 271.03, -5.08, -8.31, 2, 0)
	MovementLoopAddLocation(NPC, 272.3, -5.01, -6.52, 2, 0)
	MovementLoopAddLocation(NPC, 275.96, -4.41, -1.98, 2, 0)
	MovementLoopAddLocation(NPC, 276.24, -4.49, 1.07, 2, 0)
	MovementLoopAddLocation(NPC, 272.5, -4.24, 2.8, 2, 15)
	MovementLoopAddLocation(NPC, 276.61, -4.46, 0.02, 2, 0)
	MovementLoopAddLocation(NPC, 277.53, -4.43, -1.87, 2, 0)
	MovementLoopAddLocation(NPC, 274.73, -4.6, -3.77, 2, 0)
	MovementLoopAddLocation(NPC, 269.24, -5.09, -6, 2, 0)
	MovementLoopAddLocation(NPC, 262.47, -5.08, -6.14, 2, 0)
	MovementLoopAddLocation(NPC, 259.82, -5.02, -6.24, 2, 0)
	MovementLoopAddLocation(NPC, 255.55, -3.94, -1.98, 2, 15)
	MovementLoopAddLocation(NPC, 258.59, -3.95, 1.75, 2, 0)
	MovementLoopAddLocation(NPC, 261.14, -3.96, 3.37, 2, 0)
	MovementLoopAddLocation(NPC, 265.26, -3.98, 4.96, 2, 0)
	MovementLoopAddLocation(NPC, 269.38, -3.99, 4.54, 2, 0)
	MovementLoopAddLocation(NPC, 272.7, -4.12, 3.49, 2, 0)
	MovementLoopAddLocation(NPC, 277.83, -4.1, 3.25, 2, 15)
	MovementLoopAddLocation(NPC, 279.42, -4.14, 3.1, 2, 0)
	MovementLoopAddLocation(NPC, 274.76, -4.2, 2.94, 2, 0)
end
end