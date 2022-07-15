--[[
    Script Name    : SpawnScripts/Antonica/aDarkpawlookout.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.14 10:07:09
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 10
    local level2 = 11
    local difficulty1 = 6
    local hp1 = 370
    local power1 = 130
    local difficulty2 = 6
    local hp2 = 430
    local power2 = 160
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