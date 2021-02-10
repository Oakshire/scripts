--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772028.lua
    Script Author  : Rylec
    Script Date    : 2021.02.09 06:02:56
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetEquippedItemByID(NPC, 0, 83328)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "1237")
end

function hailed(NPC, Spawn)
    Say(NPC, "1237 2h_sword_attack")
end

function respawn(NPC)
    spawn(NPC)
end