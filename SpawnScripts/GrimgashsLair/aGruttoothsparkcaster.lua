--[[
    Script Name    : SpawnScripts/GrimgashsLair/aGruttoothsparkcaster.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.23 01:09:03
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end


function respawn(NPC)
	spawn(NPC)
end

function death(NPC,Spawn)
    local zone = GetZone(NPC)
    local Gob1 = GetSpawnByLocationID(zone, 133776472)
    local Gob2 = GetSpawnByLocationID(zone, 133776473)
    local Gob3 = GetSpawnByLocationID(zone, 133776474)
    local GobChamp = GetSpawnByLocationID(zone, 133776471)
    local Grimgash = GetSpawnByLocationID(zone, 133776469)
    if IsAlive(Gob1) == false and IsAlive(Gob2) == false and IsAlive(Gob3) == false then
    SetTarget(Grimgash,Spawn)
    SetTarget(GobChamp,Spawn)
    FaceTarget(Grimgash,Spawn)
    FaceTarget(GobChamp,Spawn)
    AddTimer(NPC,1200,"Taunt",1,Spawn)
    AddTimer(NPC,5000,"GrimAttack",1,Spawn)
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