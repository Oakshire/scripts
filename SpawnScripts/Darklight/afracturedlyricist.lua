--[[
    Script Name    : SpawnScripts/Darklight/afracturedlyricist.lua
    Script Author  : fearfx
    Script Date    : 2017.01.21 05:01:19
    Script Purpose : 
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
