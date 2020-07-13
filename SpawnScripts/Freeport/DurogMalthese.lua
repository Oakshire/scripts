--[[
    Script Name    : SpawnScripts/Freeport/DurogMalthese.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.12 04:07:49
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "In their hearts, everyone longs for the sea...", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

