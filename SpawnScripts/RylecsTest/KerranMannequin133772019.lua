--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772019.lua
    Script Author  : Rylec
    Script Date    : 2021.02.07 07:02:40
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetEquippedItemByID(NPC, 0, 83328)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "52")
end

function hailed(NPC, Spawn)
    Say(NPC, "52 2h_sword_idle")
end

function respawn(NPC)
    spawn(NPC)
end
