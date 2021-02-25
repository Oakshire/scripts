--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772208.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "12066")
end

function hailed(NPC, Spawn)
    Say(NPC, "12066 pugilist_parry_backhand")
end

function respawn(NPC)
    spawn(NPC)
end