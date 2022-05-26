--[[
    Script Name    : SpawnScripts/PeatBog/alargescavengerweak.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.05.25 02:05:36
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    
    local Level = GetLevel(NPC)
    local level1 = 7
    local level2 = 8
    local difficulty1 = 2
    local hp1 = 70
    local power1 = 30
    local difficulty2 = 2
    local hp2 = 80
    local power2 = 35
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