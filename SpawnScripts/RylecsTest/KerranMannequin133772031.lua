--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772031.lua
    Script Author  : Rylec
    Script Date    : 2021.02.09 06:02:54
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetEquippedItemByID(NPC, 0, 83328)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "10720")
end

function hailed(NPC, Spawn)
    Say(NPC, "10720 2h_sword_attack03")
end

function respawn(NPC)
    spawn(NPC)
end