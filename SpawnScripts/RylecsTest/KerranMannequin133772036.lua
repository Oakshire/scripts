--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772036.lua
    Script Author  : Rylec
    Script Date    : 2021.02.10 03:02:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetEquippedItemByID(NPC, 0, 83328)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "10732")
end

function hailed(NPC, Spawn)
    Say(NPC, "10732 2h_sword_parry_down")
end

function respawn(NPC)
    spawn(NPC)
end