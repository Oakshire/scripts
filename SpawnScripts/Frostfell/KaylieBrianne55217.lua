--[[
        Script Name     :       SpawnScripts/Frostfell/KaylieBrianne55217.lua
	Script Purpose	:	Waypoint Path for KaylieBrianne55217.lua
	Script Author	:	Rylec
	Script Date	:	11-30-2019 03:16:50 
	Script Notes	:	Source: Live
--]]

function spawn(NPC)
        SetPlayerProximityFunction(NPC, 15, "InRange")
end

function hailed(NPC, Spawn)
        Say(NPC, "Watch out! It's slippery!!")  --text created by Rylec, not on Live
end

function respawn(NPC)
end

function InRange(NPC, Spawn)
        SpawnSet(NPC, "action_state", 0) 
        
        local rand = math.random(1,2)
        
        if rand==1 then
               Say(NPC, "Whoa... whoa... Oh no!!")
        end        

        if rand==2 then
               Say(NPC, "Oh no! I can't stay standing... it's too slippery!")
        end   

        PlayAnimation(NPC, 11767)
        AddTimer(NPC, 1300, "TimerLyingDown", 1, Spawn)
end

function TimerLyingDown(NPC)
        PlayAnimation(NPC, 11769)
        AddTimer(NPC, 2400, "TimerGettingUp", 1, Spawn)
end

function TimerGettingUp(NPC)
        PlayAnimation(NPC, 11768)
        AddTimer(NPC, 2500, "TimerConfused", 1, Spawn)
end

function TimerConfused(NPC)
        PlayAnimation(NPC, 11214)
        AddTimer(NPC, 1000, "TimerResetState", 1, Spawn)
end

function TimerResetState(NPC)
        SpawnSet(NPC, "action_state", 2809) 
end