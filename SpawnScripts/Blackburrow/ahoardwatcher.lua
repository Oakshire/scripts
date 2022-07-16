--[[
    Script Name    : SpawnScripts/Blackburrow/ahoardwatcher.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.11 07:07:40
    Script Purpose : 
                   : 
--]]
    dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 15
    local level2 = 16
    local difficulty1 = 7
    local hp1 = 1275
    local power1 = 400
    local difficulty2 = 7
    local hp2 = 1500
    local power2 = 475
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