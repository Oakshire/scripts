--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772034.lua
    Script Author  : Rylec
    Script Date    : 2021.02.09 06:02:51
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetEquippedItemByID(NPC, 0, 83328)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "10723")
end

function hailed(NPC, Spawn)
    Say(NPC, "10723 2h_sword_attack_recoil02")
end

function respawn(NPC)
    spawn(NPC)
end