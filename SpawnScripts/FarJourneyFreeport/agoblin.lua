--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/a goblin.lua
    Script Author  : LethalEncounter
    Script Date    : 2020.07.02
    Script Purpose : Govern movement and spawn behavior of the goblin on the Far Journey.
    Script Notes   : Re-wrote random behavior functions so they suck less. Neveruary 08/07/21
--]]

function spawn(NPC)
	AddTimer(NPC, 5000, "idle_loop")
end

function hailed(NPC, player)
	AddTimer(NPC, 100, "idle_loop")
end

function idle_loop(NPC)
    local states = {15, 217, 218, 883, 226, 296, 311, 315, 488, 519, 521, 524, 550, 632, 637, 717, 82}
        SendStateCommand(NPC, states[math.random(#states)])
	AddTimer(NPC, math.random(5000, 7000), "stop_animation")	
end

function stop_animation(NPC)
	SendStateCommand(NPC, 0)
	if GetSpawn(NPC, 270011) == nil then
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
	local choice = {217, 226, 550, 717, 125, 125, 125, 125} -- update to retain intention of original script. mostly want threaten.
        SendStateCommand(NPC, states[math.random(#states)])
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