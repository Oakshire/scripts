--[[
    Script Name    : SpawnScripts/PeatBog/GreaterBogFaerie.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.05.18 12:05:39
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    
    local Level = GetLevel(NPC)
    local level1 = 9
    local level2 = 10
    local difficulty1 = 5
    local hp1 = 165
    local power1 = 75
    local difficulty2 = 5
    local hp2 = 235
    local power2 = 85
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