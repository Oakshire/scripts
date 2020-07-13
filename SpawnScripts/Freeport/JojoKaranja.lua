--[[
    Script Name    : SpawnScripts/Freeport/JojoKaranja.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.12 04:07:44
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Greetings, friend... Come sit awhile if you are weary from travel.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

