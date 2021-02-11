--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772041.lua
    Script Author  : Rylec
    Script Date    : 2021.02.10 03:02:14
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetEquippedItemByID(NPC, 0, 83328)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "1461")
end

function hailed(NPC, Spawn)
    Say(NPC, "1461 2h_sword_ouch_down and 4608 2h_sword_ouch_thrust")
end

function respawn(NPC)
    spawn(NPC)
end