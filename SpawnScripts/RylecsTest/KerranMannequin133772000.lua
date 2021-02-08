--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772000.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetEquippedItemByID(NPC, 0, 83850)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "1373")
end

function hailed(NPC, Spawn)
    Say(NPC, "1373 1h_sword_death_blow01")
end

function respawn(NPC)
    spawn(NPC)
end