--[[
    Script Name    : SpawnScripts/Freeport/DrakeFallon.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.22 09:07:17
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Unity in Lucan.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

