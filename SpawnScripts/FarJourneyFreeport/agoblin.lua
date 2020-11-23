--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/a goblin.lua
    Script Author  : LethalEncounter
    Script Date    : 2020.07.02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	AddTimer(NPC, 5000, "idle_loop")
end

function hailed(NPC, player)
	AddTimer(NPC, 100, "idle_loop")
end

function idle_loop(NPC)
    choice = math.random(0, 15) 
	if choice == 0 then
		SendStateCommand(NPC, 217)
	elseif choice == 1 then
		SendStateCommand(NPC, 218)
	elseif choice == 2 then
		SendStateCommand(NPC, 883)
	elseif choice == 3 then
		SendStateCommand(NPC, 226)		
	elseif choice == 4 then
		SendStateCommand(NPC, 296)
	elseif choice == 5 then
		SendStateCommand(NPC, 311)
	elseif choice == 6 then
		SendStateCommand(NPC, 315)
	elseif choice == 7 then
		SendStateCommand(NPC, 488)
	elseif choice == 8 then
		SendStateCommand(NPC, 519)
	elseif choice == 9 then
		SendStateCommand(NPC, 521)
	elseif choice == 10 then
		SendStateCommand(NPC, 524)
	elseif choice == 11 then
		SendStateCommand(NPC, 550)
	elseif choice == 12 then
		SendStateCommand(NPC, 632)
	elseif choice == 13 then
		SendStateCommand(NPC, 637)
	elseif choice == 14 then
		SendStateCommand(NPC, 717)
	else
		SendStateCommand(NPC, 82)
	end
	AddTimer(NPC, math.random(5000, 7000), "stop_animation")	
end

function stop_animation(NPC)
	SendStateCommand(NPC, 0)
	if GetSpawn(NPC, 270011) == Nil then
		AddTimer(NPC, 500, "run_around_loop_init")
	else
		AddTimer(NPC, math.random(3000, 10000), "idle_loop")
	end
end

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
	MovementLoopAdd(NPC, -4.43, -2.07, 6.17, 5, 3, "run_around_loop_pause1")
	MovementLoopAdd(NPC, -5.23, -2.01, 0.39, 5, 3, "run_around_loop_pause2")
	MovementLoopAdd(NPC, -4.88, -2.06, 4.26, 5, 3, "run_around_loop_pause3")
	MovementLoopAdd(NPC, 3.94, -2.07, 0.66, 5, 3, "run_around_loop_pause4")
	MovementLoopAdd(NPC, 2.84, -2.07, -2.07, 5, 3, "run_around_loop_pause5")
	MovementLoopAdd(NPC, 3.41, -1.99, -7.42, 5, 3, "run_around_loop_pause6")
end

function run_around_loop_pause(NPC)
	choice = math.random(0, 7) --[ mostly get threaten (125) this way ]--
	if choice == 0 then
		SendStateCommand(NPC, 217)
	elseif choice == 1 then
		SendStateCommand(NPC, 226)		
	elseif choice == 2 then
		SendStateCommand(NPC, 550)
	elseif choice == 3 then
		SendStateCommand(NPC, 717)
	else
		SendStateCommand(NPC, 125)
	end
	AddTimer(NPC, 2800, "run_around_loop_stop_animation")
end

function run_around_loop_pause1(NPC)
	SendStateCommand(GetSpawn(NPC, 270005), 218)
	run_around_loop_pause(NPC)
end

function run_around_loop_pause2(NPC)
	SendStateCommand(GetSpawn(NPC, 270006), 525)
	run_around_loop_pause(NPC)
end

function run_around_loop_pause3(NPC)
	run_around_loop_pause(NPC)
end

function run_around_loop_pause4(NPC)
	SendStateCommand(GetSpawn(NPC, 270004), 535)
	run_around_loop_pause(NPC)
end

function run_around_loop_pause5(NPC)
	SendStateCommand(GetSpawn(NPC, 270001), 218)
	run_around_loop_pause(NPC)
end

function run_around_loop_pause6(NPC)
	run_around_loop_pause(NPC)
end

function run_around_loop_stop_animation(NPC)
	SendStateCommand(NPC, 0)	
end