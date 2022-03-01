--[[
    Script Name    : SpawnScripts/Freeport/aFreeportvisitant56898.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.04 09:05:46
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
	MoveToLocation(NPC, -245.53, -56.06, 67.14, 2)
	MoveToLocation(NPC, -288.00, -56.07, 67.79, 2)
	MoveToLocation(NPC, -302.16, -56.07, 82.60, 2)
	MoveToLocation(NPC, -303.83, -56.07, 84.26, 2, "heading")
end	


function heading(NPC)
SetHeading(NPC, 86.62)
AddTimer(NPC, 10000, "movement_loop_continue", 1)
end

function heading2(NPC)
SetHeading(NPC, 181.75)
AddTimer(NPC, 10000, "movement_loop_start", 1)
end

function movement_loop_continue(NPC)
  	MoveToLocation(NPC, -302.16, -56.07, 82.60, 2)
  	MoveToLocation(NPC, -288.00, -56.07, 67.79, 2)
  	MoveToLocation(NPC, -245.53, -56.06, 67.14, 2)
  	MoveToLocation(NPC, -245.35, -56.06, 75.44, 2, "heading2")
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