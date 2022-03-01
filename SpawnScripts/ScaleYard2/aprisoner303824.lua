--[[
    Script Name    : SpawnScripts/ScaleYard2/aprisoner303824.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.29 09:08:55
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 50, "InRange", "InRange")
SpawnSet(NPC, "action_state", 16109)
SpawnSet(NPC, "visual_state", 2811)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

function attacked(NPC)
SpawnSet(NPC, "visual_state", 0)
SpawnSet(NPC, "action_state", 0)
end

function InRange(NPC, Spawn)
PlayersLevel = GetLevel(Spawn)
SpawnSet(NPC, "level", PlayersLevel)
end