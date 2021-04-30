--[[
    Script Name    : SpawnScripts/Freeport/aFreeportdweller56778.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.29 08:04:45
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
MoveToLocation(NPC, 299.95, -3.66, 24.88, 2)
MoveToLocation(NPC, 305.75, -3.55, 25.86, 2)
MoveToLocation(NPC, 302.51, -3.89, 45.14, 2)
MoveToLocation(NPC, 284.80, -3.78, 79.59, 2)
MoveToLocation(NPC, 295.74, -3.48, 89.77, 2)
MoveToLocation(NPC, 296.99, -4.27, 100.77, 2)
MoveToLocation(NPC, 295.85, -4.39, 105.04, 2, "heading")
end


function heading(NPC)
SetHeading(NPC, 69.30)
AddTimer(NPC, 7000, "movement_loop_continue", 1)
end

function heading2(NPC)
SetHeading(NPC, 51.70)
AddTimer(NPC, 7000, "movement_loop_start", 1)
end


function movement_loop_continue(NPC)
MoveToLocation(NPC, 296.99, -4.27, 100.77, 2)
MoveToLocation(NPC, 295.74, -3.48, 89.77, 2)
MoveToLocation(NPC, 284.80, -3.78, 79.59, 2)
MoveToLocation(NPC, 302.51, -3.89, 45.14, 2)
MoveToLocation(NPC, 305.75, -3.55, 25.86, 2)
MoveToLocation(NPC, 299.95, -3.66, 24.88, 2, "heading2")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if choice == 1 then
	AddTimer(NPC, 7000, "movement_loop_continue", 1)
	else
	AddTimer(NPC, 7000, "movement_loop_continue", 1)    
end
   end

function respawn(NPC)
	spawn(NPC)
end