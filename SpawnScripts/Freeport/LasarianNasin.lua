--[[
    Script Name    : SpawnScripts/Freeport/LasarianNasin.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.06 08:08:56
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Any great civilization is not built in a day.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

