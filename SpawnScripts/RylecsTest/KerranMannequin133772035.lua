--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772035.lua
    Script Author  : Rylec
    Script Date    : 2021.02.09 06:02:18
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetEquippedItemByID(NPC, 0, 83328)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "10731")
end

function hailed(NPC, Spawn)
    Say(NPC, "10731 2h_sword_parry_backhand")
end

function respawn(NPC)
    spawn(NPC)
end