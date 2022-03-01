--[[
    Script Name    : SpawnScripts/Freeport/Valil.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.11 09:07:08
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Don't bother me!  I'm waiting to speak to someone, and I don't have time to deal with you!", "point", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

