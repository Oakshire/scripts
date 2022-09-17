--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothaggressor.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.08 03:09:47
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 3
    local level2 = 4
    local difficulty1 = 6
    local hp1 = 75
    local power1 = 45
    local difficulty2 = 6
    local hp2 = 110
    local power2 = 55
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
SetTempVariable(NPC,"Update","false")
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)  --Priests use minor heal if the deer is diseased.  These deer will then give updates for scouts to scouts.
    if SpellName == 'Taunt' then
    if GetQuestStep(Spawn, 5739) ==1 then

     SetTempVariable(NPC,"Update","true")
    end
    end
end

--function aggro(NPC,Spawn)
--if GetQuestStep(Spawn, 5739)==1 then
    

function EmoteLoop(NPC,Spawn)
   if IsInCombat(NPC) == false then
        choice = MakeRandomInt(1,13)
        if choice == 1 then
 	    PlayFlavor(NPC, "", "", "neener", 0, 0, Spawn, 0)
        elseif choice == 2 then
 	    PlayFlavor(NPC, "", "", "rude", 0, 0, Spawn, 0)            
        elseif choice == 3 then
 	    PlayFlavor(NPC, "", "", "flirt", 0, 0, Spawn, 0) 
        elseif choice == 4 then
 	    PlayFlavor(NPC, "", "", "woowoo", 0, 0, Spawn, 0)
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
        else
 	    AddTimer(NPC,MakeRandomInt(10000,11000),"EmoteLoop") 
 	    end
    end   

function death(NPC,Spawn)
if GetQuestStep(Spawn, 5739)==1 then
    if GetTempVariable(NPC,"Update")=="true" then
        AddStepProgress(Spawn,5739,1,1)
        else
         SendMessage(Spawn, "You must 'TAUNT' the Gruttooth aggressors if you wish to demonstrate your battle prowess.")
         SendPopUpMessage(Spawn, "You must 'TAUNT' the Gruttooth aggressors.",200, 200, 200)
        end
    end
end