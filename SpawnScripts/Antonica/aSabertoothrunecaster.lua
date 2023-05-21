--[[
    Script Name    : SpawnScripts/Antonica/aSabertoothrunecaster.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.12 10:07:45
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll1.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 17
    local level2 = 18
    local level3 = 19
    local difficulty = 6
    local hp1 = 1180
    local power1 = 360
    local hp2 = 1290
    local power2 = 410
    local hp3 = 1315
    local power3 = 425
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    elseif Level == level3
        then
    SpawnSet(NPC, "difficulty", difficulty)
    SpawnSet(NPC, "hp", hp3)
    SpawnSet(NPC, "power", power3)
    end

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end