--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/Rotweed.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.19 03:10:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 13
    local level2 = 14
    local difficulty1 = 8
    local hp1 = 1475
    local power1 = 485
    local difficulty2 = 8
    local hp2 = 1720
    local power2 = 530
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