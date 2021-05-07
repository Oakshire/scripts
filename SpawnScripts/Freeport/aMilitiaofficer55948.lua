--[[
    Script Name    : SpawnScripts/Freeport/aMilitiaofficer55948.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.06 06:05:36
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
MoveToLocation(NPC, -234.34, -56.06, 183.80, 2)
MoveToLocation(NPC, -230.64, -56.06, 179.81, 2)
MoveToLocation(NPC, -230.23, -56.06, 167.99, 2)
MoveToLocation(NPC, -195.84, -57.01, 168.48, 2)
MoveToLocation(NPC, -193.12, -57.39, 145.01, 2)
MoveToLocation(NPC, -199.74, -56.94, 138.93, 2)
MoveToLocation(NPC, -199.76, -56.84, 135.19, 2, "heading")
end

function heading(NPC)
SetHeading(NPC, 27.88)
AddTimer(NPC, "10000", "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
MoveToLocation(NPC, -199.74, -56.94, 138.93, 2)
MoveToLocation(NPC, -193.12, -57.39, 145.01, 2)
MoveToLocation(NPC, -195.84, -57.01, 168.48, 2)
MoveToLocation(NPC, -230.23, -56.06, 167.99, 2)
MoveToLocation(NPC, -230.64, -56.06, 179.81, 2)
MoveToLocation(NPC, -234.34, -56.06, 183.80, 2)
MoveToLocation(NPC, -234.11, -56.06, 183.49, 2, "heading2")
end


function heading2(NPC)
SetHeading(NPC, 92.92)
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