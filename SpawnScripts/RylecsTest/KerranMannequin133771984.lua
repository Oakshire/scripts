--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133771984.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetEquippedItemByID(NPC, 0, 83850)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "16")
end

function hailed(NPC, Spawn)
    Say(NPC, "16 1h_sword_idle")
end

function respawn(NPC)
    spawn(NPC)
end
