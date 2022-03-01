--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772049.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "12072")
end

function hailed(NPC, Spawn)
    Say(NPC, "12072 pugilist_strafe_right")
end

function respawn(NPC)
    spawn(NPC)
end