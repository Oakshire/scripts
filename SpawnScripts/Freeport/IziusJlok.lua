--[[
    Script Name    : SpawnScripts/Freeport/IziusJlok.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 06:07:19
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "The power of the spirits can be used to strengthen all of Freeport.  Never forget that.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

