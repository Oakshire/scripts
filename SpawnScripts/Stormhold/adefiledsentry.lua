--[[
    Script Name    : SpawnScripts/Stormhold/adefiledsentry.lua
    Script Author  : Premierio015
    Script Date    : 2022.04.10 02:04:00
    Script Purpose : 
                   : 
--]]

local level1 = 16
local difficulty1 = 7
local hp1 = 2176
local power1 = 789
local level2 = 15
local difficulty2 = 7
local hp2 = 3484
local power2 = 1439

function spawn(NPC)
    local Level = GetLevel(NPC)
    if Level == level1 then
    SpawnSet(NPC, "difficulty1", 6)
    SpawnSet(NPC, "hp1", 2176)
    SpawnSet(NPC, "power1", 789)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty2", 7)
    SpawnSet(NPC, "hp2", 3484)
    SpawnSet(NPC, "power2", 1439)
    end
    end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end



