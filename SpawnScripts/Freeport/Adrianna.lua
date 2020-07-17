--[[
    Script Name    : SpawnScripts/Freeport/Adrianna.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.16 06:07:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Begone.  I have work to do, and you are in my way!", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

