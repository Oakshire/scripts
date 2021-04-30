--[[
    Script Name    : SpawnScripts/Freeport/aFreeportgladiator55630.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.29 09:04:46
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
MoveToLocation(NPC, 176.04, -3.53, -22.35, 2)
MoveToLocation(NPC, 166.63, -3.53, -11.70, 2)
MoveToLocation(NPC, 164.38, -3.53, 45.97, 2)
MoveToLocation(NPC, 168.38, -3.53, 44.84, 2, "heading")
end

function heading(NPC)
SetHeading(NPC, 275.51)
AddTimer(NPC, 7000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
MoveToLocation(NPC, 164.38, -3.53, 45.97, 2)
MoveToLocation(NPC, 166.63, -3.53, -11.70, 2)
MoveToLocation(NPC, 176.04, -3.53, -22.35, 2, "heading2")
end

function heading2(NPC)
SetHeading(NPC, 117.31)
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