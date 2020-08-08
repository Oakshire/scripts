--[[
    Script Name    : SpawnScripts/Freeport/Serris.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 06:08:57
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Come ssee me when you've matured a bit, sscrappling.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

