--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772045.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "12053")
end

function hailed(NPC, Spawn)
    Say(NPC, "12053 pugilist_exit")
end

function respawn(NPC)
    spawn(NPC)
end