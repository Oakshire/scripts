--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772037.lua
    Script Author  : Rylec
    Script Date    : 2021.02.10 03:02:31
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetEquippedItemByID(NPC, 0, 83328)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "10733")
end

function hailed(NPC, Spawn)
    Say(NPC, "10733 2h_sword_parry_forehand")
end

function respawn(NPC)
    spawn(NPC)
end