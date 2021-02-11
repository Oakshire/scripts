--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772040.lua
    Script Author  : Rylec
    Script Date    : 2021.02.10 03:02:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetEquippedItemByID(NPC, 0, 83328)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "1460")
end

function hailed(NPC, Spawn)
    Say(NPC, "1460 2h_sword_ouch_backhand")
end

function respawn(NPC)
    spawn(NPC)
end