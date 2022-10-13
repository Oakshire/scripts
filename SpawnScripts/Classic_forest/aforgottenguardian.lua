--[[
    Script Name    : SpawnScripts/Classic_forest/aforgottenguardian.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.12 09:10:48
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local level1 = 9
    local level2 = 10
    local level3 = 11
    local difficulty1 = 8
    local hp1 = 560
    local power1 = 240
    local difficulty2 = 8
    local hp2 = 645
    local power2 = 300
    local difficulty3 =8
    local hp3 = 870
    local power3 = 325
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