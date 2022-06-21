--[[
    Script Name    : SpawnScripts/VerminSnye/aBloodsaberadept330076.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.06.20 11:06:55
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =13
    local level2 = 14
    local difficulty1 = 9
    local hp1 = 2360
    local power1 = 1085
    local difficulty2 = 9
    local hp2 = 2730
    local power2 = 1205
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