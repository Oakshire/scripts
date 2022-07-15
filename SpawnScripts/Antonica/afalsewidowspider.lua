--[[
    Script Name    : SpawnScripts/Antonica/afalsewidowspider.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.14 11:07:33
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 23
    local level2 = 24
    local difficulty1 = 4
    local hp1 = 1325
    local power1 = 300
    local difficulty2 = 4
    local hp2 = 1355
    local power2 = 305
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