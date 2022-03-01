--[[
    Script Name    : SpawnScripts/Qeynos/acaninewatcher.lua
    Script Author  : Cynnar
    Script Date    : 2019.04.28 04:04:16
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
MoveToLocation(NPC, 432.51, -21.56, 284.73, 1)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

