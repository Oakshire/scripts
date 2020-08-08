--[[
    Script Name    : SpawnScripts/Freeport/SelyseBrazenroot.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 06:08:04
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Glory to The Overlord.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

