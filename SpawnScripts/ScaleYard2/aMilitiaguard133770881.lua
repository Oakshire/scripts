--[[
    Script Name    : SpawnScripts/ScaleYard2/aMilitiaguard133770881.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.28 08:08:13
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SpawnSet(NPC, "visual_state", 540)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end