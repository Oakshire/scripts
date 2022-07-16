--[[
    Script Name    : SpawnScripts/Blackburrow/arazorgill.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.15 05:07:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 12
    local level2 = 13
    local difficulty1 = 6
    local hp1 = 550
    local power1 = 185
    local difficulty2 = 6
    local hp2 = 680
    local power2 = 205
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