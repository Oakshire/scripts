--[[
    Script Name    : SpawnScripts/Freeport/aSeafurycorsair56857.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.04 09:05:11
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
	MoveToLocation(NPC, -208.98, -56.07, -56.44, 2)
	MoveToLocation(NPC, -212.10, -56.07, -56.47, 2, "heading")
end	

function heading(NPC)
SetHeading(NPC, 89.39)
AddTimer(NPC, 10000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
 MoveToLocation(NPC, -208.98, -56.07, -56.44, 2)
 MoveToLocation(NPC, -208.43, -56.07, 9.66, 2)
 MoveToLocation(NPC, -210.44, -56.07, 10.31, 2, "heading2")
 end
 
 function heading2(NPC)
SetHeading(NPC, 103.61)
AddTimer(NPC, 10000, "movement_loop_start", 1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1, 2)
	if choice == 1 then
	AddTimer(NPC, 10000, "movement_loop_start", 1)
	else
	AddTimer(NPC, 10000, "movement_loop_continue", 1)
end
   end

function respawn(NPC)
	spawn(NPC)
end