--[[
    Script Name    : SpawnScripts/Freeport/Jemilar.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.13 07:07:17
    Script Purpose : 
    Script Notes   : REFORGING IS NOT IMPLEMENTED YET
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
        PlayFlavor(NPC, "", "You do not currently own the Reforging Feature!", "no", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

