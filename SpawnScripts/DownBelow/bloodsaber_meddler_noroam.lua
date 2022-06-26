--[[
    Script Name    : SpawnScripts/DownBelow/bloodsaber_meddler_noroam.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.06.25 10:06:11
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 7
    local level2 = 8
    local difficulty1 = 4
    local hp1 = 100
    local power1 = 40
    local difficulty2 = 4
    local hp2 = 120
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