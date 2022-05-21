--[[
    Script Name    : SpawnScripts/PeatBog/afunguscrawler.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.05.18 12:05:35
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 8
    local level2 = 9
    local difficulty1 = 5
    local hp1 = 145
    local power1 = 65
    local difficulty2 = 5
    local hp2 = 165
    local power2 = 75
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