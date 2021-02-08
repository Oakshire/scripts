--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772023.lua
    Script Author  : Rylec
    Script Date    : 2021.02.07 07:02:01
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetEquippedItemByID(NPC, 0, 83328)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "10736")
end

function hailed(NPC, Spawn)
    Say(NPC, "10736 2h_sword_strafe_left")
end

function respawn(NPC)
    spawn(NPC)
end