--[[
    Script Name    : SpawnScripts/Blackburrow/adarklasher.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.15 04:07:57
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 14
    local level2 = 15
    local difficulty1 = 6
    local hp1 = 795
    local power1 = 240
    local difficulty2 = 6
    local hp2 = 1045
    local power2 = 310
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