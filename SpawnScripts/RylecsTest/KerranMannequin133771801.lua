--[[
    Script Name    : SpawnScripts/RylecsTest/KerranMannequin133771801.lua
    Script Author  : Rylec
    Script Date    : 2021.01.30 05:01:15
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
--    AddTimer(NPC, 5000, "animation")
    SpawnSet(NPC, "action_state", "121")
end

function hailed(NPC, Spawn)
--    FaceTarget(NPC, Spawn)
    Say(NPC, "121 Bow")
end

function respawn(NPC)
    spawn(NPC)
end

function animation(NPC)
    PlayAnimation(NPC, 121)
        AddTimer(NPC, 3000, "animation")
end
