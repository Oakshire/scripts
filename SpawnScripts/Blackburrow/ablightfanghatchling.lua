--[[
    Script Name    : SpawnScripts/Blackburrow/ablightfanghatchling.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.27 08:07:47
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 18
    local level2 = 19
    local difficulty1 = 5
    local hp1 = 900
    local power1 = 230
    local difficulty2 = 6
    local hp2 = 930
    local power2 = 270
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