--[[
    Script Name    : SpawnScripts/Commonlands/aburlyarmadillo.lua
    Script Author  : gloat
    Script Date    : 2019.01.31 12:01:41
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/MovementCircleSmall"
function spawn(NPC)
    SpawnChooseRandomMovement(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

