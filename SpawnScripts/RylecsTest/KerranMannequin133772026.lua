--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772026.lua
    Script Author  : Rylec
    Script Date    : 2021.02.09 06:02:11
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetEquippedItemByID(NPC, 0, 83328)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "10739")
end

function hailed(NPC, Spawn)
    Say(NPC, "10739 2h_sword_taunt_combat_art")
end

function respawn(NPC)
    spawn(NPC)
end