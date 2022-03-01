--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772039.lua
    Script Author  : Rylec
    Script Date    : 2021.02.10 03:02:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetEquippedItemByID(NPC, 0, 83328)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "1458")
end

function hailed(NPC, Spawn)
    Say(NPC, "1458 2h_sword_dodge_down")
end

function respawn(NPC)
    spawn(NPC)
end