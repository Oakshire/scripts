--[[
    Script Name    : SpawnScripts/qeynos_combined02/SeniorInitiateKaruda.lua
    Script Author  : Rylec
    Script Date    : 2021.01.31 03:01:11
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    count = 1
end

function hailed(NPC, Spawn)
    if count == 1 then
        stand(NPC, Spawn)   
    else
        count = 1
        Say(NPC, "I still feel shame over my defeat.  However, through that defeat, I have learned much about how far even I have to go in my discipline.")
    end
end

function respawn(NPC)
    spawn(NPC)
end

function stand(NPC, Spawn)
    SpawnSet(NPC, "visual_state", "0")
    PlayAnimation(NPC, "539")
    AddTimer(NPC, 2000, "turn", 1, Spawn)
    count = count + 1
end

function turn(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    AddTimer(NPC, 2000, "sit")
end

function sit(NPC)
    PlayAnimation(NPC, "538")
    AddTimer(NPC, 1200, "sitIdle")
end

function sitIdle(NPC)
    SpawnSet(NPC, "visual_state", "540")
end