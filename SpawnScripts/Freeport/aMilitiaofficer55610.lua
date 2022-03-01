--[[
    Script Name    : SpawnScripts/Freeport/aMilitiaofficer55610.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.27 07:04:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end


function movement_loop_start(NPC)
MoveToLocation(NPC, 95.93, -20.13, 105.29, 2)
MoveToLocation(NPC, 107.14, -19.95, 95.68, 2)
MoveToLocation(NPC, 112.79, -19.30, 94.75, 2)
MoveToLocation(NPC, 128.68, -16.11, 110.04, 2)
MoveToLocation(NPC, 140.83, -16.05, 101.93, 2)
MoveToLocation(NPC, 144.75, -16.05, 92.57, 2)
MoveToLocation(NPC, 142.64, -16.08, 89.19, 2)
MoveToLocation(NPC, 141.35, -16.11, 85.14, 2, "heading")
end


function movement_loop_continue(NPC)
MoveToLocation(NPC, 142.64, -16.08, 89.19, 2)
MoveToLocation(NPC, 144.75, -16.05, 92.57, 2)
MoveToLocation(NPC, 140.83, -16.05, 101.93, 2)
MoveToLocation(NPC, 128.68, -16.11, 110.04, 2)
MoveToLocation(NPC, 112.79, -19.30, 94.75, 2)
MoveToLocation(NPC, 107.14, -19.95, 95.68, 2)
MoveToLocation(NPC, 94.94, -20.15, 105.12, 2, "heading2")
end

function heading2(NPC)
SetHeading(NPC, 112.89)
AddTimer(NPC, 7000, "movement_loop_start", 1)
end

function heading(NPC)
SetHeading(NPC, 10.99)
AddTimer(NPC, 7000, "movement_loop_continue", 1)
end




function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	AddTimer(NPC, 7000, "movement_loop_continue", 1)
end


function respawn(NPC)
	spawn(NPC)
end