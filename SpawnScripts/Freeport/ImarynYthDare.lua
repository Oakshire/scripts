--[[
    Script Name    : SpawnScripts/Freeport/ImarynYthDare.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 06:07:03
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Hello!  Such a mischievous day, is it not?", "snicker", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

