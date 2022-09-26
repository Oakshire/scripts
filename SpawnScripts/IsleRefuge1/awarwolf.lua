--[[
    Script Name    : SpawnScripts/IsleRefuge1/awarwolf.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.14 04:09:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 4
    local level2 = 5
    local difficulty1 = 7
    local hp1 = 165
    local power1 = 85
    local difficulty2 = 7
    local hp2 = 195
    local power2 = 95
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