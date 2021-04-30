--[[
    Script Name    : SpawnScripts/Freeport/aFreeportgladiator56128.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.29 07:04:44
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end


function movement_loop_start(NPC)
MoveToLocation(NPC, 213.02, -3.49, 72.82, 2)
MoveToLocation(NPC, 220.31, -4.06, 82.20, 2)
MoveToLocation(NPC, 240.09, -4.10, 85.27, 2)
MoveToLocation(NPC, 255.37, -3.70, 81.80, 2)
MoveToLocation(NPC, 272.10, -3.81, 77.44, 2)
MoveToLocation(NPC, 277.01, -3.65, 71.94, 2, "heading")
end

function heading(NPC)
SetHeading(NPC, 313.74)
AddTimer(NPC, 7000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
MoveToLocation(NPC, 272.10, -3.81, 77.44, 2)
MoveToLocation(NPC, 255.37, -3.70, 81.80, 2)
MoveToLocation(NPC, 240.09, -4.10, 85.27, 2)
MoveToLocation(NPC, 220.31, -4.06, 82.20, 2)
MoveToLocation(NPC, 213.02, -3.49, 72.82, 2, "heading2")
end

function heading2(NPC)
SetHeading(NPC, 72.98)
AddTimer(NPC, 7000, "movement_loop_start", 1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1, 2)
	if choice == 1 then
	AddTimer(NPC, 7000, "movement_loop_start", 1)
	else
	AddTimer(NPC, 7000, "movement_loop_continue", 1)
end
    end


function respawn(NPC)
	spawn(NPC)
end