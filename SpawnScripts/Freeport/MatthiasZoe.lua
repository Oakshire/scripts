--[[
    Script Name    : SpawnScripts/Freeport/MatthiasZoe.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.06 08:08:16
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Oh, well feel free to come back later whenever you'd like.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

