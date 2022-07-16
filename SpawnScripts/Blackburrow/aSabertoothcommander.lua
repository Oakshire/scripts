--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothcommander.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.11 07:07:45
    Script Purpose : 
                   : 
--]]
 	dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll3.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 16
    local level2 = 17
    local difficulty1 = 7
    local hp1 = 1500
    local power1 = 475
    local difficulty2 = 7
    local hp2 = 1700
    local power2 = 500
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