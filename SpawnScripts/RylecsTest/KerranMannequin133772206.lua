--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772206.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "action_state", "12038")
end

function hailed(NPC, Spawn)
    Say(NPC, "12038 pugilist_attack_recoil and 12040 pugilist_attack_recoil02")
end

function respawn(NPC)
    spawn(NPC)
end