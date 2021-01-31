--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133771983.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 07:01:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC, 5000, "animation")
    SetEquippedItemByID(NPC, 0, 83850)
end

function hailed(NPC, Spawn)
--    FaceTarget(NPC, Spawn)
    Say(NPC, "10710 1h_sword_exit")
end

function respawn(NPC)
    spawn(NPC)
end

function animation(NPC)
    PlayAnimation(NPC, 10710)
    AddTimer(NPC, 3000, "animation")
end
