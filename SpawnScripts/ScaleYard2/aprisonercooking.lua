--[[
    Script Name    : SpawnScripts/ScaleYard2/aprisonercooking.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.30 08:08:28
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
 SetPlayerProximityFunction(NPC, 50, "InRange", "InRange")
SpawnSet(NPC, "visual_state", 11244)
end


function InRange(NPC, Spawn)
PlayersLevel = GetLevel(Spawn)
SpawnSet(NPC, "level", PlayersLevel)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

