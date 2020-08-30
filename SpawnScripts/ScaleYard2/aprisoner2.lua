--[[
    Script Name    : SpawnScripts/ScaleYard2/aprisoner2.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.29 09:08:44
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 50, "InRange", "InRange")
SpawnSet(NPC, "visual_state", 24528)
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