--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772022.lua
    Script Author  : Rylec
    Script Date    : 2021.02.07 07:02:06
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetEquippedItemByID(NPC, 0, 83328)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "10735")
end

function hailed(NPC, Spawn)
    Say(NPC, "10735 2h_sword_strafe_right")
end

function respawn(NPC)
    spawn(NPC)
end