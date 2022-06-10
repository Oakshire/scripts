--[[
    Script Name    : SpawnScripts/ForestRuins/acentipede.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.06.09 10:06:07
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =7
    local level2 = 8
    local difficulty1 = 5
    local hp1 = 125
    local power1 = 55
    local difficulty2 = 5
    local hp2 = 145
    local power2 = 65
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

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end