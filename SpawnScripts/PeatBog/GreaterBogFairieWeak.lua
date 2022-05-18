--[[
    Script Name    : SpawnScripts/PeatBog/GreaterBogFairieWeak.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.05.18 12:05:55
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    
    local Level = GetLevel(NPC)
    local level1 = 9
    local level2 = 10
    local difficulty1 = 3
    local hp1 = 95
    local power1 = 40
    local difficulty2 = 3
    local hp2 = 100
    local power2 = 45
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