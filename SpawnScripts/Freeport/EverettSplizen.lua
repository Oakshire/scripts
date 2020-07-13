--[[
    Script Name    : SpawnScripts/Freeport/EverettSplizen.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.13 09:07:50
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "The Arcane Academy needs novices, " .. GetName(Spawn) .. ", but you'd be eaten alive at your present skill. Return after reaching your twentieth season, and perhaps they'll let you peek at their books.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

