--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772030.lua
    Script Author  : Rylec
    Script Date    : 2021.02.09 06:02:05
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetEquippedItemByID(NPC, 0, 83328)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "1454")
end

function hailed(NPC, Spawn)
    Say(NPC, "1454 2h_sword_attack02")
end

function respawn(NPC)
    spawn(NPC)
end