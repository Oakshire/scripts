--[[
    Script Name    : SpawnScripts/Nettleville/adog.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.20 12:06:12
    Script Purpose : 
                   : 
--]]
local AttackTimer = false   --TIMER FOR ATTACK RESPONSE (ATTACKS KERRAN)
local FollowTimer = false   --TIMER FOR FOLLOW SCRIPT

function spawn(NPC)
	waypoints(NPC)
	SetPlayerProximityFunction(NPC, 4, "InRange", "LeaveRange")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetRace(Spawn)==11 then      --KERRAN RESPONSE
	local choice = math.random(1, 2)
	if choice == 1 then
    PlayFlavor(NPC, "", "", "attack", 0, 0,Spawn)
    SendMessage(Spawn, "The dog lunges at your tail threateningly.")	
	elseif choice == 2 then
    SendMessage(Spawn, "The dog growls at you menecingly.")	
    end
    else                            --NORMAL RESPONSE
--[[    local choice = math.random(1, 2)
	if choice == 1 then
	SendMessage(Spawn, "The dog cautiously eyes you.")	
	elseif choice == 2 then
 	SendMessage(Spawn, "The dog sniffs you curiously.")
 	 end]]--
end
end


function InRange(NPC, Spawn) --FOLLOW TARGET SCRIPT IS TOO SLOW.  DOG WALKS, BUT SPEED IS NOT ADJUSTABLE.
if GetRace(Spawn)==11  or GetFactionAmount(Spawn,11)<-10000 then      --KERRAN RESPONSE
 if AttackTimer == false then
     if FollowTimer == false then
        FollowTimer = true         
--    SetFollowTarget(NPC,Spawn)
--    if not IsFollowing(NPC) then
--        ToggleFollow(NPC)
--    end
--       SetTarget(NPC,Spawn)
	    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "attack", 0, 0)
	local choice = math.random(1, 2)
	if choice == 1 then
	    SendMessage(Spawn, "A dog snarls and eyes you closely.")	
	elseif choice == 2 then
 	    SendMessage(Spawn, "A dog leers at you with a quivering jowl.")
 	 end
    AddTimer(NPC,10000,"ResetFollow")        
    AddTimer(NPC,45000,"ResetFollowTimer")        
    end    
end    
end
end

function ResetFollow(NPC)    
    if IsFollowing(NPC) then
        SetTarget(NPC,nil)
        ToggleFollow(NPC)
        AttackTimer = false
end
end

function ResetFollowTimer(NPC)    
FollowTimer = false
SetTarget(NPC,nil)
end

function respawn(NPC)
	spawn(NPC)
end

function Sleep(NPC)
local choice = math.random(1,2)
if choice == 1 then
    SpawnSet(NPC, "action_state", 540)
    AddTimer(NPC, 22000, "Wake")
    AttackTimer = true
elseif choice ==2 then
end
end

function Wake(NPC)    
    SpawnSet(NPC, "action_state", 0)
    AttackTimer = false
end


function casted_on(NPC, Spawn, SpellName) -- PRIMARY COMMAND RESPONSE (RACIAL BASED)
  if SpellName == 'Nuzzle' then
        SetFollowTarget(NPC,Spawn)
	    FaceTarget(NPC, Spawn)
    if not IsFollowing(NPC) then
        ToggleFollow(NPC)
    end
    AddTimer(NPC,10000,"ResetFollow")        
	if GetRace(Spawn)==11 then              --KERRAN RESPONSE
        local choice = math.random(1, 2)
	    if choice == 1 then
	    SendMessage(Spawn, "The dog emits a low growl.")	
	    elseif choice == 2 then
 	    SendMessage(Spawn, "The dog's ears go back and eyes you cautiously.")
 	    end
 	else
    	local choice = math.random(1, 2)   --NORMAL RESPONSE
    	if choice == 1 then
    	SendMessage(Spawn, "The dog looks at you with affection.")	
    	elseif choice == 2 then
     	SendMessage(Spawn, "The dog's tail begins to wag.")
     	end
 end
end
end

function waypoints(NPC)
    MovementLoopAddLocation(NPC, 605.94, -20.74, 357.26, 2, 0)
	MovementLoopAddLocation(NPC, 606.52, -21.31, 360.45, 2, 0)
	MovementLoopAddLocation(NPC, 607.91, -24.63, 367.79, 2, 0)
    MovementLoopAddLocation(NPC, 612.54, -26.38, 372.50, 2, 0)
	MovementLoopAddLocation(NPC, 614.17, -26.33, 372.69, 2, 0)
    MovementLoopAddLocation(NPC, 619.91, -25.77, 370.95, 2, 0)
	MovementLoopAddLocation(NPC, 621.44, -25.42, 367.87, 2, 1)
	MovementLoopAddLocation(NPC, 621.44, -25.42, 367.87, 2, math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 624.25, -25.51, 374.8, 2, 0)
	MovementLoopAddLocation(NPC, 630.78, -25.25, 380.53, 2, 0)
	MovementLoopAddLocation(NPC, 639.77, -24.74, 382.84, 2, 1)
	MovementLoopAddLocation(NPC, 639.77, -24.74, 382.84, 2,  math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 640.92, -24.77, 380.81, 2, 0)
	MovementLoopAddLocation(NPC, 642.08, -24.75, 371.5, 2, 0)
	MovementLoopAddLocation(NPC, 647.74, -24.7, 367.81, 2, 0)
	MovementLoopAddLocation(NPC, 651.46, -24.71, 366.1, 2, 0)
	MovementLoopAddLocation(NPC, 657.19, -24.79, 362.92, 2, 0)
	MovementLoopAddLocation(NPC, 663.73, -24.84, 358.39, 2, 0)
	MovementLoopAddLocation(NPC, 678.36, -24.75, 357, 2, 0)
	MovementLoopAddLocation(NPC, 681.89, -24.76, 357.05, 2, 1)
	MovementLoopAddLocation(NPC, 681.89, -24.76, 357.05, 2,  math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 678.69, -24.61, 352.53, 2, 0)
	MovementLoopAddLocation(NPC, 669.81, -24.5, 347.61, 2, 0)
	MovementLoopAddLocation(NPC, 668.99, -24.22, 345.02, 2, 0)
	MovementLoopAddLocation(NPC, 663.65, -22.66, 339.13, 2, 0)
	MovementLoopAddLocation(NPC, 656.94, -22.31, 332.78, 2, 0)
	MovementLoopAddLocation(NPC, 663.68, -20.44, 326.73, 2, 0)
	MovementLoopAddLocation(NPC, 665.64, -20.44, 325.66, 2, 0)
	
MovementLoopAddLocation(NPC, 665.13, -20.44, 323.43, 2, 0)
	MovementLoopAddLocation(NPC, 665.13, -20.44, 323.43, 2, 1)
	MovementLoopAddLocation(NPC, 665.13, -20.44, 323.43, 2, math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 666.4, -20.44, 322.39, 2, 0)
	MovementLoopAddLocation(NPC, 661.69, -20.44, 309.3, 2, 0)
	MovementLoopAddLocation(NPC, 663.77, -20.1, 292.47, 2, 0)
	MovementLoopAddLocation(NPC, 657.36, -20.2, 270.71, 2, 1)
	MovementLoopAddLocation(NPC, 657.36, -20.2, 270.71, 2, math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 664.27, -20.06, 290.14, 2, 0)
	MovementLoopAddLocation(NPC, 664.7, -20.1, 294.86, 2, 0)
	MovementLoopAddLocation(NPC, 659.25, -20.42, 296.79, 2, 0)
	MovementLoopAddLocation(NPC, 652.22, -20.4, 298.91, 2, 0)
	MovementLoopAddLocation(NPC, 644.8, -20.45, 302.12, 2, 0)
	MovementLoopAddLocation(NPC, 630.77, -20.59, 309.26, 2, 0)
	MovementLoopAddLocation(NPC, 617.3, -20.25, 310.24, 2, 1)
	MovementLoopAddLocation(NPC, 617.3, -20.25, 310.24, 2, math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 618.64, -20.42, 312.59, 2, 0)
	MovementLoopAddLocation(NPC, 618.81, -20.51, 316.1, 2, 0)
	MovementLoopAddLocation(NPC, 612.1, -20.69, 325.4, 2, 0)
	MovementLoopAddLocation(NPC, 608.25, -20.67, 330.6, 2, 0)
	MovementLoopAddLocation(NPC, 604.21, -20.74, 346.8, 2, 0)
	MovementLoopAddLocation(NPC, 601.92, -20.74, 347.28, 2, 0)
	MovementLoopAddLocation(NPC, 597.32, -20.45, 345.81, 2, 0)
	MovementLoopAddLocation(NPC, 587.63, -20.27, 345.31, 2, 0)
	MovementLoopAddLocation(NPC, 572.81, -20.38, 343.64, 2, 1)
	MovementLoopAddLocation(NPC, 572.81, -20.38, 343.64, 2, math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 578.76, -20.33, 344.87, 2, 0)
	MovementLoopAddLocation(NPC, 583.78, -20.22, 346.01, 2, 0)
	MovementLoopAddLocation(NPC, 586.56, -20.26, 345.69, 2, 0)
	MovementLoopAddLocation(NPC, 601.35, -20.75, 346.76, 2, 0)
	MovementLoopAddLocation(NPC, 605.31, -20.76, 337.62, 2, 0)
	MovementLoopAddLocation(NPC, 607.73, -20.65, 331.06, 2, 0)
	MovementLoopAddLocation(NPC, 613.2, -20.62, 323.51, 2, 0)
	MovementLoopAddLocation(NPC, 619.27, -20.52, 316.12, 2, 0)
	MovementLoopAddLocation(NPC, 620.88, -20.5, 313.91, 2, 0)
	MovementLoopAddLocation(NPC, 622.75, -20.41, 306.83, 2, 1)
	MovementLoopAddLocation(NPC, 622.75, -20.41, 306.83, 2, math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 623.06, -20.45, 309.56, 2, 0)
	MovementLoopAddLocation(NPC, 626.02, -20.63, 307.83, 2, 0)
	MovementLoopAddLocation(NPC, 632.63, -20.7, 304.36, 2, 0)
	MovementLoopAddLocation(NPC, 646.04, -20.49, 299.41, 2, 0)
	MovementLoopAddLocation(NPC, 653.92, -20.42, 296.15, 2, 0)
	MovementLoopAddLocation(NPC, 660.19, -20.42, 298.58, 2, 0)
	MovementLoopAddLocation(NPC, 674.9, -20.24, 300.69, 2, 1)
	MovementLoopAddLocation(NPC, 674.9, -20.24, 300.69, 2, math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 671.49, -20.25, 304.9, 2, 0)
	MovementLoopAddLocation(NPC, 668.72, -20.26, 308.31, 2, 0)
	MovementLoopAddLocation(NPC, 668.85, -20.43, 313.21, 2, 0)
	MovementLoopAddLocation(NPC, 669.65, -20.43, 319.22, 2, 0)
	MovementLoopAddLocation(NPC, 669.48, -20.44, 324.68, 2, 0)
	MovementLoopAddLocation(NPC, 664.94, -20.44, 327.59, 2, 0)
	MovementLoopAddLocation(NPC, 662.32, -20.87, 328.68, 2, 0)
	MovementLoopAddLocation(NPC, 653.62, -22.31, 331.59, 2, 0)
	MovementLoopAddLocation(NPC, 650.9, -22.32, 332.66, 2, 0)
	MovementLoopAddLocation(NPC, 642.64, -22.31, 337.16, 2, 0)
	MovementLoopAddLocation(NPC, 638.96, -22.32, 342.45, 2, 0)
	MovementLoopAddLocation(NPC, 632.17, -22.32, 345.61, 2, 1)
	MovementLoopAddLocation(NPC, 632.17, -22.32, 345.61, 2, math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 633.81, -22.32, 345.68, 2, 0)
	MovementLoopAddLocation(NPC, 640.75, -22.32, 339.35, 2, 0)
	MovementLoopAddLocation(NPC, 647.11, -22.31, 331.84, 2, 0)
	MovementLoopAddLocation(NPC, 651.76, -22.3, 328.78, 2, 0)
	MovementLoopAddLocation(NPC, 657.77, -22.3, 331.66, 2, 0)
	MovementLoopAddLocation(NPC, 663.79, -22.38, 335.83, 2, 0)
	MovementLoopAddLocation(NPC, 668.79, -22.59, 339.29, 2, 0)
	MovementLoopAddLocation(NPC, 670.18, -23.84, 343.63, 2, 0)
	MovementLoopAddLocation(NPC, 670.33, -24.58, 348.45, 2, 0)
	MovementLoopAddLocation(NPC, 664.48, -24.84, 355.08, 2, 0)
	MovementLoopAddLocation(NPC, 658.16, -24.84, 357.51, 2, 1)
	MovementLoopAddLocation(NPC, 658.16, -24.84, 357.51, 2, math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 659.3, -24.82, 360.12, 2, 0)
	MovementLoopAddLocation(NPC, 656.33, -24.81, 362.43, 2, 0)
	MovementLoopAddLocation(NPC, 652.83, -24.72, 366.02, 2, 0)
	MovementLoopAddLocation(NPC, 640.55, -24.79, 380.32, 2, 0)
	MovementLoopAddLocation(NPC, 638.05, -24.82, 383.12, 2, 0)
	MovementLoopAddLocation(NPC, 631.42, -25.07, 384.02, 2, 0)
	MovementLoopAddLocation(NPC, 624.91, -25.94, 381.66, 2, 1)
	MovementLoopAddLocation(NPC, 624.91, -25.94, 381.66, 2,math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 621.92, -26.02, 379.37, 2, 0)
	MovementLoopAddLocation(NPC, 617.1, -26.22, 375.68, 2, 0)
	MovementLoopAddLocation(NPC, 611.13, -26.44, 375.2, 2, 0)
	MovementLoopAddLocation(NPC, 605.74, -25.21, 369.57, 2, 0)
	MovementLoopAddLocation(NPC, 605.03, -24.28, 367.47, 2, 0)
	MovementLoopAddLocation(NPC, 605.05, -20.73, 358.82, 2, 0)
	MovementLoopAddLocation(NPC, 604.68, -20.51, 351.26, 2, 0)
	MovementLoopAddLocation(NPC, 608.47, -20.61, 348.5, 2, 1)
	MovementLoopAddLocation(NPC, 608.47, -20.61, 348.5, 2, math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 606.77, -20.62, 348.5, 2, 0)
	

end


