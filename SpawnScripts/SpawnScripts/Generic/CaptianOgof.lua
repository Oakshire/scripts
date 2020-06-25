--[[
    Script Name    : SpawnScripts/Generic/CaptianOgof.lua
    Script Author  : gloat
    Script Date    : 2019.02.03 01:02:50
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

