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
    AddTimer(NPC, 5000, "Test")    
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

--[[

function Test(NPC)
    count = count+1
    Say(NPC, "Appearance: "..count.."")
    PlayAnimation(NPC, 323)
    PlayAnimation(NPC, count)    
    AddTimer(NPC, 5000, "Test")
end



function Stand(NPC)
    SpawnSet(NPC, "visual_state", "0")

    PlayAnimation(NPC, 539)
    AddTimer(NPC, 4000, "Dance01")	
end

function Dance01(NPC)
    PlayAnimation(NPC, 10955)    
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
    AddTimer(NPC, 4000, "Sit")
end

function Sit(NPC)
    PlayAnimation(NPC, 538)    
    AddTimer(NPC, 2000, "SitIdle")
end

function SitIdle(NPC)
    PlayAnimation(NPC, 540)    
    AddTimer(NPC, 10000, "Stand")
end
--]]
