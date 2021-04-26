--[[
    Script Name    : SpawnScripts/Freeport/aMilitiacommander.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.25 10:04:54
    Script Purpose : 
    Scripts Notes   :  need to add animations
--]]

function spawn(NPC)
movement_loop_start(NPC) -- we start here
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	AddTimer(NPC, 3000, "movement_loop_continue", 1, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function movement_loop_start(NPC) 
	MoveToLocation(NPC, 90.35, -10.01, -42.31,  2) 
	MoveToLocation(NPC, 89.77, -10.03, -47.38, 2, "stay_and_return")
end


function stay_and_return(NPC) -- Changes Commander heading and pause for 10 sec.
SetHeading(NPC, 351.54)
AddTimer(NPC, 10000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC, Spawn)  -- Continues his movement to next waypoints
	MoveToLocation(NPC, 90.35, -10.01, -42.31,  2)
	MoveToLocation(NPC, 74.26, -9.76, -30.43, 2, "stay_and_return2") 
end

function stay_and_return2(NPC) 
SetHeading(NPC, 112.90)
AddTimer(NPC, 10000, "movement_loop_start", 1)   -- last timer to make a Loop
end


