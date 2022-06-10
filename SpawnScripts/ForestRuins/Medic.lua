--[[
    Script Name    : SpawnScripts/ForestRuins/Medic.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.06.09 10:06:27
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =10
    local level2 = 11
    local difficulty1 = 2
    local hp1 = 100
    local power1 = 45
    local difficulty2 = 2
    local hp2 = 140
    local power2 = 50
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