--[[
    Script Name    : SpawnScripts/Freeport/SergeantTyphoeus.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.11 09:07:29
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "It's hard to impress the Overlord. Trust me, I know.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

