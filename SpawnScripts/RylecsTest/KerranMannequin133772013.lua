--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133772013.lua
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
    Say(NPC, "1274 1h_sword_ouch_backhand")
    PlayAnimation(NPC, 10709)
end

function respawn(NPC)
    spawn(NPC)
end

function animation(NPC)
    PlayAnimation(NPC, 10709)
    AddTimer(NPC, 1000, "animation2")
end

function animation2(NPC)
    PlayAnimation(NPC, 1274)
    AddTimer(NPC, 1050, "Idle")

end

function Idle(NPC)
    PlayAnimation(NPC, 323)    
    animation2(NPC)
end