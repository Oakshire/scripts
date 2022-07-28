--[[
    Script Name    : SpawnScripts/Antonica/anAntonicanforester.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.27 08:07:18
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
     local Level = GetLevel(NPC)
    local level1 = 13
    local level2 = 14
    local difficulty1 = 4
    local hp1 = 300
    local power1 = 90
    local difficulty2 = 4
    local hp2 = 370
    local power2 = 100
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