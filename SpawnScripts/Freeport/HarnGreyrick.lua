--[[
    Script Name    : SpawnScripts/Freeport/HarnGreyrick.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.11 07:08:54
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Unless you have urgent business with the Overlord, then go about your way.", "point", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

