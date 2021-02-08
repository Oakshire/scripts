--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772017.lua
    Script Author  : Rylec
    Script Date    : 2021.02.07 06:02:03
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC, 5000, "animation")
    SetEquippedItemByID(NPC, 0, 83328)
end

function hailed(NPC, Spawn)
    Say(NPC, "50 2h_sword_enter")
end

function respawn(NPC)
    spawn(NPC)
end

function animation(NPC)
    PlayAnimation(NPC, 50)
    AddTimer(NPC, 3000, "animation")
end
