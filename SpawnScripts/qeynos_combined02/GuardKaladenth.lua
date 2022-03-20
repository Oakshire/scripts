--[[
    Script Name    : SpawnScripts/qeynos_combined02/GuardKaladenth.lua
    Script Author  : Rylec
    Script Date    : 2021.10.07 03:10:58
    Script Purpose : 
                   : 
--]]

local Tolar = 0
local GuardKaladenthRound = 0

function spawn(NPC)
    waypoints01(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints01(NPC, Spawn)
-- 594.5 -21.44 -257.44
    GuardKaladenthRound = 1

	MoveToLocation(NPC, 586.6, -20.75, -257.61, 2)
	MoveToLocation(NPC, 567.91, -20.16, -267.01, 2)
	MoveToLocation(NPC, 551.11, -20.07, -278.67, 2)
	MoveToLocation(NPC, 535.17, -20.19, -281.03, 2, "WalkTowardsTolar")
end

function waypoints02(NPC, Spawn)
	MoveToLocation(NPC, 532.86, -20.72, -295.55, 2)
	MoveToLocation(NPC, 546.85, -21.18, -306.05, 2)
	MoveToLocation(NPC, 554.54, -21.68, -313.88, 2)
	MoveToLocation(NPC, 561.72, -21.93, -313.78, 2, "DelayBeforeWaypoints03")
end

function DelayBeforeWaypoints03(NPC, Spawn)
    AddTimer(NPC, MakeRandomInt(3000,10000), "waypoints03")
end

function waypoints03(NPC, Spawn)
	MoveToLocation(NPC, 556.27, -21.76, -314.34, 2)
	MoveToLocation(NPC, 544.99, -21.16, -326.12, 2)
	MoveToLocation(NPC, 539.46, -20.31, -345.27, 2)
	MoveToLocation(NPC, 540.69, -20.02, -351.6, 2, "DelayBeforeWaypoints04")
end

function DelayBeforeWaypoints04(NPC, Spawn)
    AddTimer(NPC, MakeRandomInt(3000,10000), "waypoints04")
end

function waypoints04(NPC, Spawn)
	MoveToLocation(NPC, 557.41, -20.46, -356.75, 2)
	MoveToLocation(NPC, 571.4, -21.67, -363.38, 2)
	MoveToLocation(NPC, 574.43, -21.63, -364.45, 2)
	MoveToLocation(NPC, 576.13, -21.63, -364.76, 2, "DelayBeforeWaypoints05")
end

function DelayBeforeWaypoints05(NPC, Spawn)
    AddTimer(NPC, MakeRandomInt(3000,10000), "waypoints05")
end

function waypoints05(NPC, Spawn)
    GuardKaladenthRound = 2
    
	MoveToLocation(NPC, 572.51, -21.66, -363.25, 2)
	MoveToLocation(NPC, 554.27, -20.47, -341.45, 2)
	MoveToLocation(NPC, 539.46, -20.96, -329.09, 2)
	MoveToLocation(NPC, 531.08, -21.08, -317.15, 2)
	MoveToLocation(NPC, 525.95, -20.83, -301.52, 2, "WalkTowardsTolar")
end

function waypoints06(NPC, Spawn)
	MoveToLocation(NPC, 538.59, -20.19, -280.36, 2)
	MoveToLocation(NPC, 549.06, -20.02, -277.42, 2)
	MoveToLocation(NPC, 580.93, -20.83, -259, 2)
	MoveToLocation(NPC, 586.29, -20.75, -257.29, 2)
	MoveToLocation(NPC, 592.66, -21.19, -256.08, 2, "DelayBeforeWaypoints07")
end

function DelayBeforeWaypoints07(NPC, Spawn)
    AddTimer(NPC, MakeRandomInt(3000,10000), "waypoints07")
end

function waypoints07(NPC, Spawn)
    GuardKaladenthRound = 3
    
    MoveToLocation(NPC, 584.87, -20.74, -257.79, 2)
	MoveToLocation(NPC, 550.09, -20.03, -277.9, 2)
	MoveToLocation(NPC, 535.17, -20.19, -281.03, 2, "WalkTowardsTolar")
end

function waypoints08(NPC, Spawn)
	MoveToLocation(NPC, 526.89, -20.91, -304.36, 2)
	MoveToLocation(NPC, 531.85, -21.07, -322.17, 2)
	MoveToLocation(NPC, 555.88, -20.4, -350.44, 2)
	MoveToLocation(NPC, 566.04, -21.51, -358.19, 2)
	MoveToLocation(NPC, 571.22, -21.9, -360.12, 2, "DelayBeforeQueenAntonia")
end

function DelayBeforeQueenAntonia(NPC, Spawn)
    AddTimer(NPC, 2000, "QueenAntonia")
end

function QueenAntonia(NPC)
    local Antonia = GetSpawn(NPC, 6600268)

	if Antonia ~= nil then 
	    FaceTarget(NPC, Antonia)
        AddTimer(NPC, MakeRandomInt(5000,15000), "SaluteAntonia") 
    end
end

function SaluteAntonia(NPC)
    local count = MakeRandomInt(1,10)

    if count == 1 then
        PlayAnimation(NPC, 121)  --Bow
        AddTimer(NPC, 5000, "waypoints09")        
    elseif count == 2 then
        PlayAnimation(NPC, 10815)  --Salute
        AddTimer(NPC, 7000, "waypoints09")  
    elseif count == 3 then
        PlayAnimation(NPC, 12030)  --Ponder
        AddTimer(NPC, 12000, "waypoints09")  
    else
        waypoints09(NPC, Spawn)   
    end
end

function waypoints09(NPC, Spawn)
	MoveToLocation(NPC, 557.45, -19.97, -363.21, 2, "DelayBeforeWaypoints10")
end

function DelayBeforeWaypoints10(NPC, Spawn)
    AddTimer(NPC, MakeRandomInt(3000,10000), "AppreciateArchers")
end

function AppreciateArchers(NPC)
    local count = MakeRandomInt(1,40)

    if count == 1 then
        PlayAnimation(NPC, 891)  --Yawn
        AddTimer(NPC, 7000, "waypoints10")         
    elseif count == 2 then
        PlayAnimation(NPC, 10745)  --Agree
        AddTimer(NPC, 4000, "waypoints10")  
    elseif count == 3 then
        PlayAnimation(NPC, 10760)  --Applaud
        AddTimer(NPC, 6500, "waypoints10")
    elseif count == 4 then
        PlayAnimation(NPC, 11150)  --Cheer
        AddTimer(NPC, 9000, "waypoints10")  
    elseif count == 5 then
        PlayAnimation(NPC, 11463)  --Duck
        AddTimer(NPC, 5500, "waypoints10")  
    elseif count == 6 then
        PlayAnimation(NPC, 11682)  --Hello
        AddTimer(NPC, 4000, "waypoints10")  
--    elseif count == 7 then
--        PlayAnimation(NPC, 11683)  --Heroic
--        AddTimer(NPC, 6500, "waypoints10")  
    elseif count == 8 then
        PlayAnimation(NPC, 11882)  --Nod
        AddTimer(NPC, 4000, "waypoints10")  
    elseif count == 9 then
        PlayAnimation(NPC, 11976)  --Peer
        AddTimer(NPC, 8000, "waypoints10")  
    elseif count == 10 then
        PlayAnimation(NPC, 12030)  --Ponder
        AddTimer(NPC, 12000, "waypoints10")  
    elseif count == 11 then
        PlayAnimation(NPC, 12031)  --Pout
        AddTimer(NPC, 4000, "waypoints10")  
    elseif count == 12 then
        PlayAnimation(NPC, 12246)  --Sigh
        AddTimer(NPC, 4000, "waypoints10")  
    elseif count == 13 then
        PlayAnimation(NPC, 12285)  --Smile
        AddTimer(NPC, 4000, "waypoints10")  
--    elseif count == 14 then
--        PlayAnimation(NPC, 12701)  --Growl
--        AddTimer(NPC, 4000, "waypoints10")  
    elseif count == 15 then
        PlayAnimation(NPC, 13008)  --Stretch
        AddTimer(NPC, 16500, "waypoints10")  
    elseif count == 16 then
        PlayAnimation(NPC, 13056)  --Tapfoot
        AddTimer(NPC, 12000, "waypoints10")  
--    elseif count == 17 then
--        PlayAnimation(NPC, 13064)  -- Thumbs Up
--        AddTimer(NPC, 6500, "waypoints10")  
    else
        waypoints10(NPC, Spawn)   
    end
end

function waypoints10(NPC, Spawn)
	MoveToLocation(NPC, 551.37, -20.59, -339.61, 2)
	MoveToLocation(NPC, 549.97, -21.32, -323.8, 2)
	MoveToLocation(NPC, 556.73, -21.82, -316.15, 2)
	MoveToLocation(NPC, 561.12, -21.93, -314.55, 2, "DelayBeforeWaypoints11")
end

function DelayBeforeWaypoints11(NPC, Spawn)
    AddTimer(NPC, MakeRandomInt(3000,10000), "waypoints11")
end

function waypoints11(NPC, Spawn)
    GuardKaladenthRound = 4
    
	MoveToLocation(NPC, 555.2, -21.68, -313.03, 2)
	MoveToLocation(NPC, 534.13, -20.76, -296.53, 2, "WalkTowardsTolar")
end

function waypoints12(NPC, Spawn)
	MoveToLocation(NPC, 533.65, -20.32, -284.06, 2)
	MoveToLocation(NPC, 548.81, -20.02, -277.27, 2)
	MoveToLocation(NPC, 583.68, -20.76, -258.02, 2)
	MoveToLocation(NPC, 593.11, -21.26, -256.92, 2, "DelayBeforeWaypoints13")
end

function DelayBeforeWaypoints13(NPC, Spawn)
    AddTimer(NPC, MakeRandomInt(3000,10000), "waypoints13")
end

function waypoints13(NPC, Spawn)
	MoveToLocation(NPC, 585.04, -20.74, -257.84, 2)
	MoveToLocation(NPC, 548.58, -20.07, -278.76, 2)
	MoveToLocation(NPC, 537.42, -20.22, -281.23, 2)
	MoveToLocation(NPC, 529.76, -20.52, -288.34, 2)
	MoveToLocation(NPC, 527.26, -20.82, -300.68, 2)
	MoveToLocation(NPC, 529.72, -21.06, -316.94, 2)
	MoveToLocation(NPC, 540.12, -20.77, -334.29, 2)
	MoveToLocation(NPC, 571.01, -21.66, -363.32, 2)
	MoveToLocation(NPC, 574.12, -21.62, -364.57, 2)
	MoveToLocation(NPC, 576.53, -21.63, -364.89, 2,"DelayBeforeWaypoints14")
end

function DelayBeforeWaypoints14(NPC, Spawn)
    AddTimer(NPC, MakeRandomInt(3000,10000), "waypoints14")
end

function waypoints14(NPC, Spawn)
    GuardKaladenthRound = 5

	MoveToLocation(NPC, 571, -21.63, -363.9, 2)
	MoveToLocation(NPC, 556.44, -20.38, -353.29, 2)
	MoveToLocation(NPC, 544.26, -20.79, -334.28, 2)
	MoveToLocation(NPC, 530.95, -21.08, -316.32, 2)
	MoveToLocation(NPC, 525.95, -20.83, -301.52, 2, "WalkTowardsTolar")
end

function waypoints15(NPC, Spawn)
	MoveToLocation(NPC, 529.32, -20.72, -294.82, 2)
	MoveToLocation(NPC, 540.27, -20.93, -301.29, 2)
	MoveToLocation(NPC, 556.15, -21.74, -313.74, 2)
	MoveToLocation(NPC, 561.14, -21.91, -313.77, 2, "DelayBeforeWaypoints16")
end

function DelayBeforeWaypoints16(NPC, Spawn)
    AddTimer(NPC, MakeRandomInt(3000,10000), "waypoints16")
end

function waypoints16(NPC, Spawn)
	MoveToLocation(NPC, 555.33, -21.67, -312.27, 2)
	MoveToLocation(NPC, 535.29, -20.78, -297.21, 2)
	MoveToLocation(NPC, 532.19, -20.54, -289.54, 2)
	MoveToLocation(NPC, 534.96, -20.27, -282.58, 2)
	MoveToLocation(NPC, 550.78, -19.98, -276.7, 2)
	MoveToLocation(NPC, 583.18, -20.77, -258.08, 2, "DelayBeforeWaypoints17")
end

function DelayBeforeWaypoints17(NPC, Spawn)
    AddTimer(NPC, MakeRandomInt(3000,10000), "waypoints17")
end

function waypoints17(NPC, Spawn)
-- 594.5 -21.44 -257.44
    GuardKaladenthRound = 1

	MoveToLocation(NPC, 567.91, -20.16, -267.01, 2)
	MoveToLocation(NPC, 551.11, -20.07, -278.67, 2)
	MoveToLocation(NPC, 535.17, -20.19, -281.03, 2, "WalkTowardsTolar")
end

function WalkTowardsTolar(NPC)
    local Tolar = GetSpawn(NPC, 6600388)

    if GuardKaladenthRound == 1 or GuardKaladenthRound == 3 then
	    if Tolar ~= nil then 
            if GetSpawnLocationID(Tolar) == 133772661 then
    	        MoveToLocation(NPC, 520.53, -20.48, -284.46, 2)	    
    	        AddTimer(NPC, 6500, "FaceGuardTolar")
    	    else
	            MoveToLocation(NPC, 519.5, -20.75, -289.63, 2)
	            AddTimer(NPC, 8000, "FaceGuardTolar")
            end
        else
	        MoveToLocation(NPC, 519.5, -20.75, -289.63, 2) -- If Tolar is not up
        end
    elseif GuardKaladenthRound == 2 or GuardKaladenthRound == 5 then
	    if Tolar ~= nil then 
            if GetSpawnLocationID(Tolar) == 133772661 then
	            MoveToLocation(NPC, 520.13, -20.69, -288.13, 2)    
                AddTimer(NPC, 7000, "FaceGuardTolar") 
    	    else
	            MoveToLocation(NPC, 519.79, -20.81, -293.74, 2)
                AddTimer(NPC, 4000, "FaceGuardTolar") 
            end
        else
	        MoveToLocation(NPC, 519.79, -20.81, -293.74, 2) -- If Tolar is not up
        end	 
    elseif GuardKaladenthRound == 4 then
	    if Tolar ~= nil then 
            if GetSpawnLocationID(Tolar) == 133772661 then
	            MoveToLocation(NPC, 520.13, -20.69, -288.13, 2)    
                AddTimer(NPC, 7000, "FaceGuardTolar") 
    	    else
	            MoveToLocation(NPC, 519.79, -20.81, -293.74, 2)
                AddTimer(NPC, 6000, "FaceGuardTolar") 
            end
        else
	        MoveToLocation(NPC, 519.79, -20.81, -293.74, 2) -- If Tolar is not up
        end	  
    end    
end

function FaceGuardTolar(NPC)
    local Tolar = GetSpawn(NPC, 6600388)
	
	if Tolar ~= nil then 
	    FaceTarget(NPC, Tolar)
        AddTimer(NPC, 2000, "SaluteGuardTolar") 
    end
end

function SaluteGuardTolar(NPC)
    local Tolar = GetSpawn(NPC, 6600388)
	
	if Tolar ~= nil then 
        PlayAnimation(NPC, 12167)
        AddTimer(NPC, 1000, "TolarFacesGuardKaladenth") 
    end
end

function TolarFacesGuardKaladenth(NPC)
    local Tolar = GetSpawn(NPC, 6600388)
	
	if Tolar ~= nil then 
	    FaceTarget(Tolar, NPC)
        AddTimer(NPC, 500, "TolarSalutesGuardKaladenth") 
    end
end

function TolarSalutesGuardKaladenth(NPC)
    local Tolar = GetSpawn(NPC, 6600388)
	
	if Tolar ~= nil then 
        PlayAnimation(Tolar, 12167)
    end

    if GuardKaladenthRound == 1 then
        AddTimer(NPC, MakeRandomInt(2000,7000), "waypoints02")
    elseif GuardKaladenthRound == 2 then
        AddTimer(NPC, MakeRandomInt(2000,7000), "waypoints06")
    elseif GuardKaladenthRound == 3 then
        AddTimer(NPC, MakeRandomInt(2000,7000), "waypoints08")        
    elseif GuardKaladenthRound == 4 then
        AddTimer(NPC, MakeRandomInt(2000,7000), "waypoints12")  
    else
        AddTimer(NPC, MakeRandomInt(2000,7000), "waypoints15")   
    end
end