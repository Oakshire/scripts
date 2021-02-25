--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772207.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "12039")
end

function hailed(NPC, Spawn)
    Say(NPC, "12039 pugilist_attack_recoil01")
end

function respawn(NPC)
    spawn(NPC)
end