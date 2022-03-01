--[[
    Script Name    : SpawnScripts/Freeport/ElrinnDarknor.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 06:07:41
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Freeport will be restored. Our glory cannot be extinguished.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

