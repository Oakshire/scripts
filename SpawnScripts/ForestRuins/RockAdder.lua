--[[
    Script Name    : SpawnScripts/ForestRuins/RockAdder.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.06.09 10:06:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =5
    local level2 = 6
    local difficulty1 = 5
    local hp1 = 65
    local power1 = 40
    local difficulty2 = 5
    local hp2 = 70
    local power2 = 45
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