--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772210.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "12068")
end

function hailed(NPC, Spawn)
    Say(NPC, "12068 pugilist_parry_forehand")
end

function respawn(NPC)
    spawn(NPC)
end