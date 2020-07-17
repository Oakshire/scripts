--[[
    Script Name    : SpawnScripts/Freeport/ConsternatorSoulinus.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.16 06:07:57
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "I am busy. Maybe when I'm done with my current work I'll send for you. Until then, leave me be.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

