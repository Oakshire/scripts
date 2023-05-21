--[[
    Script Name    : SpawnScripts/Antonica/aDarkpawshaman.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.04 08:07:04
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/DarkpawGnoll1.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 11
    local level2 = 12
    local difficulty1 = 6
    local hp1 = 430
    local power1 = 160
    local difficulty2 = 6
    local hp2 = 550
    local power2 = 185
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