--[[
    Script Name    : SpawnScripts/Stormhold/adefiledsquire150232.lua
    Script Author  : neatz09
    Script Date    : 2022.04.13 12:04:28
    Script Purpose : 
                   : 
--]]


function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 16
    local level2 = 15
    local difficulty1 = 7
    local hp1 = 2176
    local power1 = 789
    local difficulty2 = 7
    local hp2 = 3484
    local power2 = 1439
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