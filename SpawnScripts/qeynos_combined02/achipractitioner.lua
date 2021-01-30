--[[
    Script Name    : SpawnScripts/qeynos_combined02/achipractitioner.lua
    Script Author  : Rylec
    Script Date    : 2021.01.27 03:01:52
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    count = 2000
--    PlayAnimation(NPC, 540) 
    AddTimer(NPC, 5000, "Stand")    
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function Stand(NPC)
    SpawnSet(NPC, "visual_state", "0")
    PlayAnimation(NPC, 539)
    AddTimer(NPC, 3500, "Dance01")	
end

function Dance01(NPC)
    PlayAnimation(NPC, 10955)
    LeavesTimer(NPC)   
    AddTimer(NPC, 2400, "Dance02")
end

function Dance02(NPC)
    PlayAnimation(NPC, 323)
    PlayAnimation(NPC, 10955)    
    AddTimer(NPC, 2400, "Dance03")
end

function Dance03(NPC)
    PlayAnimation(NPC, 323)
    PlayAnimation(NPC, 10955)    
    AddTimer(NPC, 2400, "Dance04")
end

function Dance04(NPC)
    PlayAnimation(NPC, 323)
    PlayAnimation(NPC, 10955)    
    AddTimer(NPC, 2400, "DanceEnd")
end

function DanceEnd(NPC)
    PlayAnimation(NPC, 323)
    PlayAnimation(NPC, 10963)    
    SpawnSet(NPC, "action_state", "0")
    AddTimer(NPC, 4500, "Sit")
end

function Sit(NPC)
    PlayAnimation(NPC, 538)    
    AddTimer(NPC, 2000, "SitIdle")
end

function SitIdle(NPC)
    PlayAnimation(NPC, 540)    
    AddTimer(NPC, 10000, "Stand")
end

function LeavesTimer(NPC)
    AddTimer(NPC, 2400, "LeavesStart")
end

function LeavesStart(NPC)
    SpawnSet(NPC, "action_state", "144")
--    AddTimer(NPC, 2400, "LeavesStart")
end
