--[[
    Script Name    : SpawnScripts/Antonica/aSabertoothtormentor.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.22 05:01:13
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll3.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 18
    local level2 = 19
    local level3 = 20
    local difficulty1 = 6
    local hp1 = 1290
    local power1 = 410
    local difficulty2 = 6
    local hp2 = 1440
    local power2 = 425
    local difficulty3 =6
    local hp3 = 1930
    local power3 = 475
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
     elseif Level == level3
        then
    SpawnSet(NPC, "difficulty", difficulty3)
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