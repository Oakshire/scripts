--[[
    Script Name    : SpawnScripts/EastFreeport/TheOverlord.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.28 03:04:40
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
visage01(NPC,Spawn)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end


local EndSpeech = true

function visage01(NPC, Spawn)
    EndSpeech = false
    EmoteLoop(NPC)
end

function EmoteLoop(NPC)
   math.randomseed(os.time())
 local choice = math.random(1,12)

    if choice == 1 then
        PlayAnimation(NPC, 13042)
        AddTimer(NPC, 5200, "Idle")	
    elseif choice == 2 then
	    PlayAnimation(NPC, 13043)
	    AddTimer(NPC, 4400, "Idle")
    elseif choice == 3 then
	    PlayAnimation(NPC, 13044)
	    AddTimer(NPC, 6950, "Idle")
    elseif choice == 4 then
	    PlayAnimation(NPC, 13045)
        AddTimer(NPC, 5300, "Idle")
    elseif choice == 5 then
	    PlayAnimation(NPC, 13046)
        AddTimer(NPC, 3900, "Idle")
    elseif choice == 6 then
	    PlayAnimation(NPC, 13047)
	    AddTimer(NPC, 4900, "Idle")
    elseif choice == 7 then
	    PlayAnimation(NPC, 13048)
	    AddTimer(NPC, 4500, "Idle")
    elseif choice == 8 then
	    PlayAnimation(NPC, 13049)
	    AddTimer(NPC, 3700, "Idle")
    elseif choice == 9 then
	    PlayAnimation(NPC, 13050)
        AddTimer(NPC, 3200, "Idle")
    elseif choice == 10 then
	    PlayAnimation(NPC, 13051)
        AddTimer(NPC, 4700, "Idle")
    elseif choice == 11 then
	    PlayAnimation(NPC, 13052)
	    AddTimer(NPC, 3500, "Idle")
    else
	    PlayAnimation(NPC, 13053)
        AddTimer(NPC, 3200, "Idle")
    end
end

function Idle(NPC)
    PlayAnimation(NPC, 13042)    
    EmoteCheck(NPC)
end

function EndLoop(NPC)
    EndSpeech = true
end

function EmoteCheck(NPC)
    if EndSpeech == false then
        EmoteLoop(NPC)
    else
	    PlayAnimation(NPC, 13042)
    end
end