--[[
    Script Name    : SpawnScripts/Freeport/TheslaBlackthorne.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 06:07:53
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Do you have business with me?", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

