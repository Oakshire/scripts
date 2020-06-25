--[[
    Script Name    : SpawnScripts/QueensColony/arazortoothshark.lua
    Script Author  : fearfx
    Script Date    : 2017.01.25 06:01:45
    Script Purpose : a hacky fix for a quest in DLW (The Big One, ID= 190) Spawns Smolderfin.
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function death(NPC, Spawn)
    if GetName(NPC) == "Smolderfin" then
        SetTempVariable(Spawn, "TheBigOne", nil)
    end
end