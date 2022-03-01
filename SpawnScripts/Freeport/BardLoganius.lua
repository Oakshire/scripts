--[[
    Script Name    : SpawnScripts/Freeport/BardLoganius.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 04:07:56
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Hello, friend. Care for a song while you relax? Just a small donation and Zagat and myself will make your stay much more enjoyable.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

