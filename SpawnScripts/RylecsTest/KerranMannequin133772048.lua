--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772048.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "12071")
end

function hailed(NPC, Spawn)
    Say(NPC, "12071 pugilist_strafe_left")
end

function respawn(NPC)
    spawn(NPC)
end