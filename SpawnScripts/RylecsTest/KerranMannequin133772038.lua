--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772038.lua
    Script Author  : Rylec
    Script Date    : 2021.02.10 03:02:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetEquippedItemByID(NPC, 0, 83328)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "1457")
end

function hailed(NPC, Spawn)
    Say(NPC, "1457 2h_sword_dodge_backhand and 1459 2h_sword_dodge_forehand")
end

function respawn(NPC)
    spawn(NPC)
end