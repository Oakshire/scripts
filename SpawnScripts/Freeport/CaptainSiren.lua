--[[
    Script Name    : SpawnScripts/Freeport/CaptainSiren.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.22 10:07:42
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Stay out of the Seafury Buccaneer's way, and you'll have nothing to worry about.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

