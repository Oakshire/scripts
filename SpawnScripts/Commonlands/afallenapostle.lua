--[[
    Script Name    : SpawnScripts/Commonlands/afallenapostle.lua
    Script Author  : gloat
    Script Date    : 2019.01.31 02:01:24
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/ValmaarSkeletonVoiceOvers"
require "SpawnScripts/Generic/MovementCircleSmall"


function spawn(NPC)
    SpawnChooseRandomMovement(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function aggro(NPC, Spawn)
generic_aggro(NPC, Spawn)
end

function death(NPC, Spawn)
generic_death(NPC, Spawn)
end