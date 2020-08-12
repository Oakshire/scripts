--[[
    Script Name    : SpawnScripts/Freeport/IulusUVas.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.11 06:08:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Hello.  Is there something I can do for you?", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

