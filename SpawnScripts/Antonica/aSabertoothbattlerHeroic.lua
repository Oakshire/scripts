--[[
    Script Name    : SpawnScripts/Antonica/aSabertoothbattlerHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.31 07:01:46
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "heroic", 1)
    local Level = GetLevel(NPC)
    local level1 = 15
    local level2 = 16
    local level3 = 17
    local difficulty1 = 6
    local hp1 = 920
    local power1 = 270
    local difficulty2 = 6
    local hp2 = 1045
    local power2 = 310
    local difficulty3 =6
    local hp3 = 1180
    local power3 = 360
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