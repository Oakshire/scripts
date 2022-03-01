--[[
    Script Name    : SpawnScripts/ScaleYard2/aMilitiaguard.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.28 06:08:15
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
 SetPlayerProximityFunction(NPC, 50, "InRange", "InRange")
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