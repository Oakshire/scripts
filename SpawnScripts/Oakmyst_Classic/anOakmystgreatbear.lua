--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/anOakmystgreatbear.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.19 03:10:47
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 11
    local level2 = 12
    local level3 = 13
    local difficulty1 = 8
    local hp1 = 930
    local power1 = 360
    local difficulty2 = 8
    local hp2 = 1205
    local power2 = 400
    local difficulty3 =8
    local hp3 = 1420
    local power3 = 485
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