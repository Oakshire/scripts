--[[
    Script Name    : SpawnScripts/Freeport/LieutenantVesder.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.14 06:07:49
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Be gone.  I don't care to deal with you.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

