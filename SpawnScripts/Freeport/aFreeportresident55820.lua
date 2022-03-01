--[[
    Script Name    : SpawnScripts/Freeport/aFreeportresident55820.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.03 07:05:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
MoveToLocation(NPC, -160.59, -53.03, -275.92, 2)
MoveToLocation(NPC, -175.75, -58.79, -223.07, 2)
MoveToLocation(NPC, -189.17, -58.83, -212.58, 2)
MoveToLocation(NPC, -193.15, -58.83, -204.21, 2)
MoveToLocation(NPC, -188.02, -58.83, -201.04, 2, "heading")
end

function heading(NPC)
SetHeading(NPC, 213.97)
AddTimer(NPC, 10000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
MoveToLocation(NPC, -193.15, -58.83, -204.21, 2)
MoveToLocation(NPC, -189.17, -58.83, -212.58, 2)
MoveToLocation(NPC, -175.75, -58.79, -223.07, 2)
MoveToLocation(NPC, -160.59, -53.03, -275.92, 2)
MoveToLocation(NPC, -150.05, -52.84, -282.33, 2, "heading2")
end

function heading2(NPC)
SetHeading(NPC, 110.79)
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