--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/a goblin.lua
    Script Author  : LethalEncounter
    Script Date    : 2020.07.02
    Script Purpose : Govern movement and spawn behavior of the goblin on the Far Journey.
    Script Notes   : Re-wrote random behavior functions so they suck less. Neveruary 08/07/21
    Script Notes   : Created client versioning & added interactions between NPCs.  MISSING INGRED CHASE AROUND BOAT, but not necessary. - Dorbin 08.14.22  
--]]
local legacy = true -- Client check.  True == DoF or Classic

function spawn(NPC)
--	AddTimer(NPC, 5000, "idle_loop")
CageCollision(NPC)
end

function hailed(NPC, player)
--	AddTimer(NPC, 100, "idle_loop")
end

function idle_loop(NPC)
    local states = {15, 217, 218, 883, 226, 296, 311, 315, 488, 519, 521, 524, 550, 632, 637, 717, 82}
        SendStateCommand(NPC, states[math.random(#states)])
	AddTimer(NPC, math.random(5000, 7000), "stop_animation")	
end


function CageCollision(NPC)
    SpawnMob(GetZone(NPC),270011,-3.74,-0.57,15.74)
end

function stop_animation(NPC)
	SendStateCommand(NPC, 0)
	if GetSpawn(NPC, 270011) == nil then
		AddTimer(NPC, 500, "run_around_loop_init")
	else
		AddTimer(NPC, math.random(3000, 10000), "idle_loop")
	end
end

----NON DOF VERSION

function NonDoF_idle_loop(NPC)-- For NON DOF/CLASSIC CLIENTS
    local states = {11255 , 11256 , 883, 11287 , 11554 , 11663 , 11676 , 12081 , 12166 , 12172 , 12191 , 12325 , 12983 , 13015 , 13063 , 10844, 11880 }
        SendStateCommand(NPC, states[math.random(#states)])
	AddTimer(NPC, math.random(5000, 7000), "NonDoF_stop_animation")	
end

function NonDoF_stop_animation(NPC)
	SendStateCommand(NPC, 0)
    legacy = false
	if GetSpawn(NPC, 270011) == nil then
		AddTimer(NPC, 500, "run_around_loop_init")
	else
		AddTimer(NPC, math.random(3000, 10000), "NonDoF_idle_loop")
	end
end

-----

function run_around_loop_init(NPC)
	MoveToLocation(NPC, 2.92, 0.57, 15.98, 5, "run_around_loop_init_pause", false)	
end

function run_around_loop_init_pause(NPC)
	ClearRunningLocations(NPC)
	AddTimer(NPC, 700, "run_around_loop_init_continue")
end

function run_around_loop_init_continue(NPC)
	MoveToLocation(NPC, 3.23, -2.07, 10.83, 5, "run_around_loop_init_finished", false)
end

function run_around_loop_init_finished(NPC)
	ClearRunningLocations(NPC)
	AddTimer(NPC, 100, "run_around_loop")
end

function run_around_loop(NPC)
	MovementLoopAdd(NPC, -4.43, -2.07, 6.17, 5, 1)
	MovementLoopAdd(NPC, -4.43, -2.07, 6.17, 5, 3, "run_around_loop_pause1")
	MovementLoopAdd(NPC, -4.43, -2.07, 6.17, 5, 0)
	MovementLoopAdd(NPC, -5.23, -2.01, 0.39, 5, 1)
	MovementLoopAdd(NPC, -5.23, -2.01, 0.39, 5, 3, "run_around_loop_pause2")
	MovementLoopAdd(NPC, -5.23, -2.01, 0.39, 5, 0)
	MovementLoopAdd(NPC, -4.88, -2.06, 4.26, 5, 1)
	MovementLoopAdd(NPC, -4.88, -2.06, 4.26, 5, 3, "run_around_loop_pause3")
	MovementLoopAdd(NPC, -4.88, -2.06, 4.26, 5, 0)
	MovementLoopAdd(NPC, 3.94, -2.07, 0.66, 5, 1)
	MovementLoopAdd(NPC, 3.94, -2.07, 0.66, 5, 3, "run_around_loop_pause4")
	MovementLoopAdd(NPC, 3.94, -2.07, 0.66, 5, 0)
	MovementLoopAdd(NPC, 2.84, -2.07, -2.07, 5, 1)
	MovementLoopAdd(NPC, 2.84, -2.07, -2.07, 5, 3, "run_around_loop_pause5")
	MovementLoopAdd(NPC, 2.84, -2.07, -2.07, 5, 0)
	MovementLoopAdd(NPC, 3.41, -1.99, -7.42, 5, 1)
	MovementLoopAdd(NPC, 3.41, -1.99, -7.42, 5, 3, "run_around_loop_pause6")
	MovementLoopAdd(NPC, 3.41, -1.99, -7.42, 5, 0)
	MovementLoopAdd(NPC, -2.75, -2.02, -5.82, 5, 0)
	MovementLoopAdd(NPC, -2.63, 1.21, -18.11,5,1)
	MovementLoopAdd(NPC, -2.63, 1.21, -18.11,5,3,"run_around_loop_pause7")
	MovementLoopAdd(NPC, -2.63, 1.21, -18.11,3,0)
	MovementLoopAdd(NPC, -2.75, -2.02, -5.82, 5, 0)
end

function run_around_loop_pause(NPC)
	local choice = {217, 226, 550, 717, 125, 125, 125, 125} -- update to retain intention of original script. mostly want threaten.
    SendStateCommand(NPC, choice[math.random(#choice)])
	AddTimer(NPC, 3000, "run_around_loop_stop_animation")
end

function run_around_loop_pauseNonDoF(NPC)
    local choice = {11255, 11287, 12325, 13063, 13063, 13063, 12153, 125,11757,11880}
    SendStateCommand(NPC, choice[math.random(#choice)])
	AddTimer(NPC, 3000, "run_around_loop_stop_animation")
end



function run_around_loop_pause1(NPC)
    SetTarget(GetSpawn(NPC, 270005),NPC)
    FaceTarget(GetSpawn(NPC, 270005), NPC) 
    SetTarget(NPC,GetSpawn(NPC, 270005)) 
    FaceTarget(NPC,GetSpawn(NPC, 270005)) 
   if legacy == true then --DoF or Classic Client
	SendStateCommand(GetSpawn(NPC, 270005), 218) --CRINGE
	run_around_loop_pause(NPC)
	else
	SendStateCommand(GetSpawn(NPC, 270005), 11256)
    run_around_loop_pauseNonDoF(NPC)
    end    

end

function run_around_loop_pause2(NPC)
    SetTarget(GetSpawn(NPC, 270006),NPC)
    SetTarget(NPC,GetSpawn(NPC, 270006)) 
    FaceTarget(GetSpawn(NPC, 270006), NPC) 
    FaceTarget(NPC,GetSpawn(NPC, 270006)) 
    if legacy == true then --DoF or Classic Client
	SendStateCommand(GetSpawn(NPC, 270006), 525) --SCREAM
	run_around_loop_pause(NPC)
	else
	SendStateCommand(GetSpawn(NPC, 270006), 12192)
    run_around_loop_pauseNonDoF(NPC)
    end    
end

function run_around_loop_pause3(NPC)
	run_around_loop_pause(NPC)
end

function run_around_loop_pause4(NPC)
    SetTarget(GetSpawn(NPC, 270004),NPC)
    FaceTarget(GetSpawn(NPC, 270004), NPC) 
    SetTarget(NPC,GetSpawn(NPC, 270004)) 
    FaceTarget(NPC,GetSpawn(NPC, 270004)) 
    if legacy == true then --DoF or Classic Client
	SendStateCommand(GetSpawn(NPC, 270004), 717) --THREATEN
	run_around_loop_pause(NPC)
	else
	SendStateCommand(GetSpawn(NPC, 270004), 13063)
    run_around_loop_pauseNonDoF(NPC)
    end  
end

function run_around_loop_pause5(NPC)
    SetTarget(GetSpawn(NPC, 270001),NPC)
    FaceTarget(GetSpawn(NPC, 270001), NPC) 
    SetTarget(NPC,GetSpawn(NPC, 270001)) 
    FaceTarget(NPC,GetSpawn(NPC, 270001)) 
   if legacy == true then --DoF or Classic Client
	SendStateCommand(GetSpawn(NPC, 270001), 218) --CRINGE
	run_around_loop_pause(NPC)
	else
	SendStateCommand(GetSpawn(NPC, 270001), 11256)
    run_around_loop_pauseNonDoF(NPC)
    end  
end

function run_around_loop_pause6(NPC)
	run_around_loop_pause(NPC)
end

function run_around_loop_pause7(NPC)
    SetTarget(GetSpawn(NPC, 270002),NPC)
    SetTarget(NPC,GetSpawn(NPC, 270002)) 
    FaceTarget(GetSpawn(NPC, 270002), NPC) 
    FaceTarget(NPC,GetSpawn(NPC, 270002)) 
   if legacy == true then --DoF or Classic Client
	SendStateCommand(GetSpawn(NPC, 270002), 528) --Shakefist
	run_around_loop_pause(NPC)
	else
	SendStateCommand(GetSpawn(NPC, 270002), 12214)
    run_around_loop_pauseNonDoF(NPC)
    end  
end

function run_around_loop_stop_animation(NPC)
	SendStateCommand(NPC, 0)	
    SetTarget(NPC,nil)
    SetTarget(GetSpawn(NPC, 270001),nil)
    SetTarget(GetSpawn(NPC, 270002),nil)
    SetTarget(GetSpawn(NPC, 270003),nil)
    SetTarget(GetSpawn(NPC, 270004),nil)
    SetTarget(GetSpawn(NPC, 270005),nil)
    SetTarget(GetSpawn(NPC, 270006),nil)
    SetTarget(NPC,nil) 
   end

function death(NPC,Spawn)
--    	AddTimer(GetSpawn(NPC, 270008), 100, "idle_loop")
end