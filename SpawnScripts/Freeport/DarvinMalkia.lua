--[[
    Script Name    : SpawnScripts/Freeport/DarvinMalkia.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.13 07:07:15
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "The magic of time is powerful.  To master it takes a lifetime.", "salute", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

