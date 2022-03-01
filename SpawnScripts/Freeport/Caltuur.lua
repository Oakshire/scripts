--[[
    Script Name    : SpawnScripts/Freeport/Caltuur.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.04 07:08:32
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Don't be fooled.  Although on the surface, Freeport seems calm, there are battles that rage around us.  Be mindful.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

