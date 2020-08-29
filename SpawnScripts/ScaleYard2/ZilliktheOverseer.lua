--[[
    Script Name    : SpawnScripts/ScaleYard2/ZilliktheOverseer.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.28 06:08:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "I am here to keep order, citizen.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

