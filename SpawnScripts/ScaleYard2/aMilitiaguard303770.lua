--[[
    Script Name    : SpawnScripts/ScaleYard2/aMilitiaguard303770.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.28 08:08:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 50, "InRange", "InRange")
SpawnSet(NPC, "visual_state", 228)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end 

function InRange(NPC, Spawn)
PlayersLevel = GetLevel(Spawn)
SpawnSet(NPC, "level", PlayersLevel)
end