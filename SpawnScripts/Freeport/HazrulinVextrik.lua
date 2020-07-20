--[[
    Script Name    : SpawnScripts/Freeport/HazrulinVextrik.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 04:07:58
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "I do not need your help. Begone.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

