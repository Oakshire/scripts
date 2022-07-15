--[[
    Script Name    : SpawnScripts/Antonica/abluewidowspider.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.14 10:07:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 21
    local level2 = 22
    local difficulty1 = 4
    local hp1 = 1165
    local power1 = 280
    local difficulty2 = 6
    local hp2 = 1295
    local power2 = 295
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