--[[
    Script Name    : SpawnScripts/Antonica/adecayingskeleton666.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.26 10:04:00
    Script Purpose : 
                   : 
--]]
    
    
    local Level = GetLevel(NPC)
    local level1 = 16
    local level2 = 15
    local difficulty1 = 7
    local hp1 = 2176
    local power1 = 789
    local difficulty2 = 7
    local hp2 = 3484
    local power2 = 1439

function spawn(NPC, Spawn)
    
  
    if Level == level1 then
   SetMaxHP(NPC, hp1)
   SetMaxPower(NPC, power1)
   SetHP(NPC, hp1)
   SetPower(NPC, power1)
   SpawnSet(NPC, "difficulty", difficulty1)
    elseif Level == level2
        then
    SetMaxHP(NPC, hp2)
   SetMaxPower(NPC, power2)
    SetHP(NPC, hp2)
    SetPower(NPC, power2)
    SpawnSet(NPC, "difficulty", difficulty2)
    end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end