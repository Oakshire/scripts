--[[
    Script Name    : SpawnScripts/Freeport/aSeafurycorsair56855.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.05 09:05:31
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
MoveToLocation(NPC, -283.35, -57.94, 139.49, 2)
MoveToLocation(NPC, -272.91, -57.94, 133.26, 2)
MoveToLocation(NPC, -267.88, -57.94, 139.42, 2)
MoveToLocation(NPC, -251.55, -57.94, 139.44, 2)
MoveToLocation(NPC, -251.47, -57.94, 141.98, 2, "heading")
end

function heading(NPC)
SetHeading(NPC, 177.73)
AddTimer(NPC, 10000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
MoveToLocation(NPC, -251.55, -57.94, 139.44, 2)
MoveToLocation(NPC, -267.88, -57.94, 139.42, 2)
MoveToLocation(NPC, -272.91, -57.94, 133.26, 2)
MoveToLocation(NPC, -283.35, -57.94, 139.49, 2)
MoveToLocation(NPC, -303.30, -57.68, 139.74, 2, "heading2")
end

function heading2(NPC)
SetHeading(NPC, 90)
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