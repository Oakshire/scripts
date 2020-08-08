--[[
    Script Name    : SpawnScripts/Freeport/IntelligenceOfficerGezlowe.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 07:08:31
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Move along, move along.", "", 1689589577, 4560189, Spawn)     
end

function respawn(NPC)

end

