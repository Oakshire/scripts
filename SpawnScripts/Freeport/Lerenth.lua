--[[
    Script Name    : SpawnScripts/Freeport/Lerenth.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.06 08:08:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "I've got some work, but not until you're a little more experienced.", "no", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

