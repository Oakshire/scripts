--[[
    Script Name    : SpawnScripts/Freeport/MizzogtheSighted.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 02:07:35
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Leave Mizzog be.  The spirits do not speak of this one.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

