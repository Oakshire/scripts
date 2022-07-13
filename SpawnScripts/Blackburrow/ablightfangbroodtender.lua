--[[
    Script Name    : SpawnScripts/Blackburrow/ablightfangbroodtender.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.13 12:07:29
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 17
    local level2 = 18
    local difficulty1 = 8
    local hp1 = 2460
    local power1 = 725
    local difficulty2 = 8
    local hp2 = 2770
    local power2 = 805
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