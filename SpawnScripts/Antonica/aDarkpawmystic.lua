--[[
    Script Name    : SpawnScripts/Antonica/aDarkpawmystic.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.12 02:07:57
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/DarkpawGnoll1.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 11
    local level2 = 12
    --local level3 = 99
    local difficulty1 = 6
    local hp1 = 430
    local power1 = 160
    local difficulty2 = 6
    local hp2 = 550
    local power2 = 185
    --local difficulty3 = 6
    --local hp3 = 430
    --local power3 = 160
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
   --[[ elseif Level == level3
        then
    SpawnSet(NPC, "difficulty", difficulty3)
    SpawnSet(NPC, "hp", hp3)
    SpawnSet(NPC, "power", power3) ]]--
    end

end

function hailed(NPC, Spawn)
end

function aggro(NPC, Spawn)
    
end

function respawn(NPC)
	spawn(NPC)
end