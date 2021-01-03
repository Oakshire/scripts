--[[
    Script Name    : SpawnScripts/Commonlands/Rilkrik.lua
    Script Author  : Premierio015
    Script Date    : 2021.01.03 08:01:57
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Not everything I have for sale is useful to everyone. Keep that in mind.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

