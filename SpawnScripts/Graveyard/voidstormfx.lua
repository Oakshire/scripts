--[[
    Script Name    : SpawnScripts/Graveyard/voidstormfx.lua
    Script Author  : Vo1d
    Script Date    : 2019.10.24 03:10:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    Despawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Despawn(NPC)
end

function respawn(NPC)

end

