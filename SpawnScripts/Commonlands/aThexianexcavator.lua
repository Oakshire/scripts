--[[
    Script Name    : SpawnScripts/Commonlands/aThexianexcavator.lua
    Script Author  : elluwrath
    Script Date    : 2020.07.25 08:07:03
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function aggro(NPC, Spawn)
     SpawnSet(NPC, "visual_state", 0)

end