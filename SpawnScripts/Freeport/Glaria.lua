--[[
    Script Name    : SpawnScripts/Freeport/Glaria.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.20 07:07:04
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Hello, citizen.  You have nothing to fear from us.  In fact, we'd be happy to get to know you better, if you are ever willing.", "", 1689589577, 4560189, Spawn) 
end

function respawn(NPC)

end

