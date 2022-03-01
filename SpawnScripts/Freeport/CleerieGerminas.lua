--[[
    Script Name    : SpawnScripts/Freeport/CleerieGerminas.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.13 09:07:38
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", " " .. GetName(Spawn) .. " I am sorries! I hear of things for you to help us with, but you needs more skill. Come sees me when you gain twenty seasonings.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

