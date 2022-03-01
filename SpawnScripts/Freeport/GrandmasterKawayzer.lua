--[[
    Script Name    : SpawnScripts/Freeport/GrandmasterKawayzer.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.06 08:08:49
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Come see me later, I may have some work for you once you're more skilled in your trade.", "", 1689589577, 4560189, Spawn) 
end

function respawn(NPC)

end

