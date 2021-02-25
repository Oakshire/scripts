--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772216.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "12063")
end

function hailed(NPC, Spawn)
    Say(NPC, "12063 pugilist_ouch_forehand")
end

function respawn(NPC)
    spawn(NPC)
end