--[[
    Script Name    : SpawnScripts/Freeport/Fonda.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.11 07:08:58
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "You do not currently own the Reforging Feature!", "no", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

