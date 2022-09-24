--[[
    Script Name    : SpawnScripts/GrimgashsLair/aGruttoothprotector.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.23 12:09:07
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddTimer(NPC,2000,"EmoteLoop")
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
function death(NPC,Spawn)
    local zone = GetZone(NPC)
    local Gob1 = GetSpawnByLocationID(zone, 133776472)
    local Gob2 = GetSpawnByLocationID(zone, 133776473)
    local Gob3 = GetSpawnByLocationID(zone, 133776474)
    local GobChamp = GetSpawnByLocationID(zone, 133776471)
    local Grimgash = GetSpawnByLocationID(zone, 133776469)
    if IsAlive(Gob1) == false and IsAlive(Gob2) == false and IsAlive(Gob3) == false then
    if IsInCombat(Grimgash)==false then
    SetTarget(Grimgash,Spawn)
    SetTarget(GobChamp,Spawn)
    FaceTarget(Grimgash,Spawn)
    FaceTarget(GobChamp,Spawn)
    AddTimer(NPC,1200,"Taunt",1,Spawn)
    AddTimer(NPC,5000,"GrimAttack",1,Spawn)
    end
    end
end 

function Taunt(NPC,Spawn)
    local zone = GetZone(NPC)
    local GobChamp = GetSpawnByLocationID(zone, 133776471)
    local Grimgash = GetSpawnByLocationID(zone, 133776469)
    if not HasLanguage(Spawn,20)then 
    PlayFlavor(GobChamp,"voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_2_garbled_27d93e2a.mp3","They want to kill us all! Charge!","point",4004358685,1661226684,Spawn,20)
    else
    PlayFlavor(GobChamp,"voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_1_aggro_3e6d7bc3.mp3","They want to kill us all! Charge!","point",1297886042,938149593,Spawn,20)
    end        
    PlayFlavor(Grimgash,"","","shakefist",0,0)
end
function GrimAttack(NPC,Spawn)
    local zone = GetZone(NPC)
    local GobChamp = GetSpawnByLocationID(zone, 133776471)
    local Grimgash = GetSpawnByLocationID(zone, 133776469)
    Attack(Grimgash,Spawn)

end