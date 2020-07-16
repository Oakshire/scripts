--[[
    Script Name    : SpawnScripts/Freeport/ElgukatheOracle.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 06:07:36
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
        PlayFlavor(NPC, "", "The spirits speak to us, and one day we will hear them, and finally awaken once again.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

