--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772018.lua
    Script Author  : Rylec
    Script Date    : 2021.02.07 06:02:31
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetEquippedItemByID(NPC, 0, 83328)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "10728")
end

function hailed(NPC, Spawn)
    Say(NPC, "10728 2h_sword_exit")
end

function respawn(NPC)
    spawn(NPC)
end