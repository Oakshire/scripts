--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772021.lua
    Script Author  : Rylec
    Script Date    : 2021.02.07 07:02:28
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetEquippedItemByID(NPC, 0, 83328)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "10725")
end

function hailed(NPC, Spawn)
    Say(NPC, "10725 2h_sword_backup")
end

function respawn(NPC)
    spawn(NPC)
end