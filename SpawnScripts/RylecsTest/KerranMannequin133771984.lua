--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133771984.lua
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
    Say(NPC, "16 1h_sword_idle")
end

function respawn(NPC)
    spawn(NPC)
end

function animation(NPC)
    PlayAnimation(NPC, 10709)
    AddTimer(NPC, 1000, "animation2")
end

function animation2(NPC)
    PlayAnimation(NPC, 16)
    AddTimer(NPC, 4200, "Idle")
end

function Idle(NPC)
    PlayAnimation(NPC, 323)    
    animation2(NPC)
end
