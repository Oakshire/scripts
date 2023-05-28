--[[
    Script Name    : SpawnScripts/Antonica/aCaltorsisCleric.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.05 09:07:26
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGhost1.lua")

function spawn(NPC)
     Appearace(NPC)
   local Level = GetLevel(NPC)
    local level1 = 18
    local level2 = 19
    local difficulty1 = 6
    local hp1 = 1180
    local power1 = 410
    local difficulty2 = 6
    local hp2 = 1315
    local power2 = 425
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

end


function Appearance(NPC)
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",2851)    
    else
    SpawnSet(NPC,"model_type",2852)    
    end
end

function respawn(NPC)
	spawn(NPC)
end