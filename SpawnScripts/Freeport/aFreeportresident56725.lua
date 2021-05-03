--[[
    Script Name    : SpawnScripts/Freeport/aFreeportresident56725.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.02 12:05:04
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
MoveToLocation(NPC, -40.09, -20.05, -260.67, 2)
MoveToLocation(NPC, -20.25, -18.80, -260.50, 2)
MoveToLocation(NPC, -18.95, -18.80, -247.79, 2)
MoveToLocation(NPC, -10.97, -18.80, -237.51, 2, "heading")
end

function heading(NPC)
SetHeading(NPC, 176.94)
AddTimer(NPC, 7000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
MoveToLocation(NPC, -18.95, -18.80, -247.79, 2)
MoveToLocation(NPC, -20.25, -18.80, -260.50, 2)
MoveToLocation(NPC, -38.93, -20.05, -261.50, 2)
MoveToLocation(NPC, -52.94, -19.97, -292.72, 2, "heading2")
end


function heading2(NPC)
SetHeading(NPC, -292.72)
AddTimer(NPC, 7000, "movement_loop_start", 1)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	AddTimer(NPC, 7000, "movement_loop_start", 1)
end

function respawn(NPC)
	spawn(NPC)
end