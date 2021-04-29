--[[
    Script Name    : SpawnScripts/Freeport/aFreeportdenizen55693.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.29 09:04:02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
MoveToLocation(NPC, 55.33, -20.18, 62.93, 2)
MoveToLocation(NPC, 51.75, -19.93, 75.50, 2)
MoveToLocation(NPC, 42.39, -18.22, 89.47, 2)
MoveToLocation(NPC, 29.07, -18.22, 92.13, 2)
MoveToLocation(NPC, 25.96, -18.22, 90.15, 2, "heading")
end 

function heading(NPC)
SetHeading(NPC, 59.67)
AddTimer(NPC, 7000, "movement_loop_continue", 1)
end   

function movement_loop_continue(NPC)
MoveToLocation(NPC, 29.60, -18.22, 92.18, 2)
MoveToLocation(NPC, 44.04, -18.22, 86.02, 2)
MoveToLocation(NPC, 52.12, -19.92, 76.37, 2)
MoveToLocation(NPC, 53.94, -20.17, 61.03, 2)
MoveToLocation(NPC, 49.78, -19.94, 60.49, 2, "heading2")
end


function heading2(NPC)
SetHeading(NPC, 52.89)
AddTimer(NPC, 7000, "movement_loop_start", 1)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	AddTimer(NPC, 7000, "movement_loop_continue", 1)
end

function respawn(NPC)
	spawn(NPC)
end