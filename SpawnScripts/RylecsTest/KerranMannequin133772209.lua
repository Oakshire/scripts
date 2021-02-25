--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772209.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "12067")
end

function hailed(NPC, Spawn)
    Say(NPC, "12067 pugilist_parry_down")
end

function respawn(NPC)
    spawn(NPC)
end