--[[
    Script Name    : SpawnScripts/Freeport/TheForgotten.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.22 06:07:28
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetMount(NPC, 15739)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "I have been waiting for one such as you.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

