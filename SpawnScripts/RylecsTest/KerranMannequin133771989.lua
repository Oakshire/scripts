--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133771989.lua
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
    PlayAnimation(NPC, 10709)
    Say(NPC, "1026 1h_sword_attack")
end

function respawn(NPC)
    spawn(NPC)
end

function animation(NPC)
    PlayAnimation(NPC, 10709)
    AddTimer(NPC, 1000, "animation2")
end

function animation2(NPC)
    PlayAnimation(NPC, 1026)
    AddTimer(NPC, 1800, "Idle")
end

function Idle(NPC)
    PlayAnimation(NPC, 323)    
    animation2(NPC)
end
