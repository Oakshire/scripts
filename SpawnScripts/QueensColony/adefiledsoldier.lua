--[[
    Script Name    : SpawnScripts/QueensColony/adefiledsoldier.lua
    Script Author  : Rylec
    Script Date    : 2020.12.10 09:12:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
--        SpawnSet(NPC, "action_state", 13016)  
    SetSpawnAnimation(NPC, 13016)
    SetActionState(NPC, Spawn)
end

function SetActionState(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    SpawnSet(NPC, "action_state", 4009)     
    AddTimer(NPC, 5000, "ResetState")    
end

function ResetState(NPC)
    SpawnSet(NPC, "action_state", 0)     
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end