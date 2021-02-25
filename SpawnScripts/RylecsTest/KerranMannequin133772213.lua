--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772213.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "12050")
end

function hailed(NPC, Spawn)
    Say(NPC, "12050 pugilist_dodge_forehand")
end

function respawn(NPC)
    spawn(NPC)
end