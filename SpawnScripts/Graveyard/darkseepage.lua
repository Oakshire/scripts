--[[
    Script Name    : SpawnScripts/Graveyard/darkseepage.lua
    Script Author  : Vo1d
    Script Date    : 2019.10.24 03:10:02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    Despawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)

    Say(NPC, "Bye!!!")
    Despawn(NPC)
end

function respawn(NPC)
    Despawn(NPC)
end

