--[[
    Script Name    : SpawnScripts/Freeport/JonakHarvester.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.06 08:08:16
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "I'm sorry, my services are only available to those more advanced in the arts.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

