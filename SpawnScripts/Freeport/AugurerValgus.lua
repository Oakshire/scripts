--[[
    Script Name    : SpawnScripts/Freeport/AugurerValgus.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.16 06:07:42
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Your strength is the heart of Freeport, citizen.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

