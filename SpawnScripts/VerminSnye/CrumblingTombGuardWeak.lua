--[[
    Script Name    : SpawnScripts/VerminSnye/CrumblingTombGuardWeak.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.06.21 07:06:50
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =15
    local level2 = 16
    local difficulty1 = 2
    local hp1 = 290
    local power1 = 100
    local difficulty2 = 2
    local hp2 = 345
    local power2 = 110
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