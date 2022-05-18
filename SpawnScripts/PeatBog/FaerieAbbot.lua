--[[
    Script Name    : SpawnScripts/PeatBog/FaerieAbbot.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.05.17 06:05:18
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    
     local Level = GetLevel(NPC)
    local level1 = 11
    local level2 = 12
    local difficulty1 = 5
    local hp1 = 290
    local power1 = 105
    local difficulty2 = 6
    local hp2 = 350
    local power2 = 125
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