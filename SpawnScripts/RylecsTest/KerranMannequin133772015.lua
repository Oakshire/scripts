--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772015.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetEquippedItemByID(NPC, 0, 83850)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "1276")
end

function hailed(NPC, Spawn)
    Say(NPC, "1276 1h_sword_ouch_forehand")
end

function respawn(NPC)
    spawn(NPC)
end