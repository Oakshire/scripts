--[[
    Script Name    : SpawnScripts/Freeport/ClaudetteWoodbridge.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.16 05:07:04
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "The blessings of Tunare can be felt all around us, even in this cold land!", "thanks", 1689589577, 4560189, Spawn) 
end

function respawn(NPC)

end

