--[[
	Script Name		:	Grittlebone.lua
	Script Purpose	:	Waypoint Path for Grittlebone.lua
	Script Author	:	Devn00b
	Script Date		:	04/09/2020 02:20:34 AM
	Script Notes	:	Locations collected from Live
--]]

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
    SendMessage(Spawn, "Grittlebone lunges at your tail threateningly.")	
	elseif choice == 2 then
    SendMessage(Spawn, "Grittlebone growls at you menecingly.")	
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

function respawn(NPC)
	spawn(NPC)
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
	    SendMessage(Spawn, "Grittlebone and eyes you closely.")	
	elseif choice == 2 then
 	    SendMessage(Spawn, "Grittlebone leers at you with a quivering jowl.")
 	 end
--    AddTimer(NPC,10000,"ResetFollow")        
--    AddTimer(NPC,45000,"ResetFollowTimer")        
    end    
end    
end
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


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 699.65, -21.07, -56.69, 2, math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 701.36, -20.64, -17.22, 2, 0)
	MovementLoopAddLocation(NPC, 742.06, -21.26, -16.11, 2, 0)
	MovementLoopAddLocation(NPC, 757.23, -21, -37.66, 2, 0)
	MovementLoopAddLocation(NPC, 802.09, -20.68, -57.13, 2, math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 805.38, -20.4, -57.77, 2, 0)
	MovementLoopAddLocation(NPC, 876.59, -25.47, -58, 2, 0)
	MovementLoopAddLocation(NPC, 884.84, -25.44, -52.25, 2, 0)
	MovementLoopAddLocation(NPC, 888.65, -25.42, -47.43, 2, 0)
	MovementLoopAddLocation(NPC, 896.08, -25.28, -26.62, 2, 0)
	MovementLoopAddLocation(NPC, 901.3, -25.43, -7.69, 2, 0)
	MovementLoopAddLocation(NPC, 909.2, -25.49, 17.07, 2, 0)
	MovementLoopAddLocation(NPC, 950.04, -25.5, 31.88, 2, 0)
	MovementLoopAddLocation(NPC, 954.98, -25.5, 24.78, 2, math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 967.68, -25.47, 12.97, 2, math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 955.83, -25.5, 24.5, 2, 0)
	MovementLoopAddLocation(NPC, 948, -25.5, 32.1, 2, 0)
	MovementLoopAddLocation(NPC, 921.54, -25.5, 24.57, 2, math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 867.38, -25.39, 54.18, 2, 0)
	MovementLoopAddLocation(NPC, 857.78, -25.42, 51.13, 2, math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 838.68, -25.47, 85.56, 2, 0)
	MovementLoopAddLocation(NPC, 837.52, -25.48, 94.61, 2, 0)
	MovementLoopAddLocation(NPC, 848.21, -25.5, 107.24, 2, math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 864.3, -25.57, 114.45, 2, math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 881.93, -25.5, 76.31, 2, 0)
	MovementLoopAddLocation(NPC, 889.81, -25.37, 45.9, 2, 0)
	MovementLoopAddLocation(NPC, 858.3, -25.37, 41.26, 2, 0)
	MovementLoopAddLocation(NPC, 833.96, -23.31, 46.12, 2, 0)
	MovementLoopAddLocation(NPC, 863.97, -25.37, 42.07, 2, 0)
	MovementLoopAddLocation(NPC, 864.56, -25.43, 27.31, 2, 0)
	MovementLoopAddLocation(NPC, 847.09, -25.46, 12.55, 2, 0)
	MovementLoopAddLocation(NPC, 864.56, -25.43, 27.31, 2, 0)
	MovementLoopAddLocation(NPC, 863.97, -25.37, 42.07, 2, 0)
	MovementLoopAddLocation(NPC, 833.96, -23.31, 46.12, 2, 4)
	MovementLoopAddLocation(NPC, 858.3, -25.37, 41.26, 2, 0)
	MovementLoopAddLocation(NPC, 889.81, -25.37, 45.9, 2, 0)
	MovementLoopAddLocation(NPC, 881.93, -25.5, 76.31, 2, 0)
	MovementLoopAddLocation(NPC, 864.3, -25.57, 114.45, 2, math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 848.21, -25.5, 107.24, 2, 0)
	MovementLoopAddLocation(NPC, 837.52, -25.48, 94.61, 2, 3)
	MovementLoopAddLocation(NPC, 838.68, -25.47, 85.56, 2, 0)
	MovementLoopAddLocation(NPC, 857.78, -25.42, 51.13, 2, math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 867.38, -25.39, 54.18, 2, 0)
	MovementLoopAddLocation(NPC, 921.54, -25.5, 24.57, 2, 0)
	MovementLoopAddLocation(NPC, 948, -25.5, 32.1, 2, 0)
	MovementLoopAddLocation(NPC, 955.83, -25.5, 24.5, 2, 0)
	MovementLoopAddLocation(NPC, 967.68, -25.47, 12.97, 2, math.random(25,36),"Sleep")
	MovementLoopAddLocation(NPC, 954.98, -25.5, 24.78, 2, 0)
	MovementLoopAddLocation(NPC, 950.04, -25.5, 31.88, 2, 0)
	MovementLoopAddLocation(NPC, 909.2, -25.49, 17.07, 2, 0)
	MovementLoopAddLocation(NPC, 901.3, -25.43, -7.69, 2, 0)
	MovementLoopAddLocation(NPC, 896.08, -25.28, -26.62, 2, 0)
	MovementLoopAddLocation(NPC, 888.65, -25.42, -47.43, 2, 0)
	MovementLoopAddLocation(NPC, 884.84, -25.44, -52.25, 2, 0)
	MovementLoopAddLocation(NPC, 876.59, -25.47, -58, 2, 0)
	MovementLoopAddLocation(NPC, 805.38, -20.4, -57.77, 2, 0)
	MovementLoopAddLocation(NPC, 802.09, -20.68, -57.13, 2, 0)
	MovementLoopAddLocation(NPC, 757.23, -21, -37.66, 2, 0)
	MovementLoopAddLocation(NPC, 742.06, -21.26, -16.11, 2, 0)
	MovementLoopAddLocation(NPC, 701.36, -20.64, -17.22, 2, 0)
	MovementLoopAddLocation(NPC, 699.65, -21.07, -56.69, 2, math.random(25,36),"Sleep")
end


