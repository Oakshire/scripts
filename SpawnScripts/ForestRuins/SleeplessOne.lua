--[[
    Script Name    : SpawnScripts/ForestRuins/SleeplessOne.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.06.09 11:06:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =9
    local level2 = 10
    local difficulty1 = 2
    local hp1 = 95
    local power1 = 45
    local difficulty2 = 2
    local hp2 = 100
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