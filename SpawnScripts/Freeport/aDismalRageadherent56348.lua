--[[
    Script Name    : SpawnScripts/Freeport/aDismalRageadherent56348.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.02 09:05:27
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
MoveToLocation(NPC,-68.43, -7.95, -97.19, 2)
MoveToLocation(NPC, -71.94, -7.96, -95.07, 2, "heading")
end

function heading(NPC)
SetHeading(NPC, 155.31)
AddTimer(NPC, 7000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
MoveToLocation(NPC,-68.43, -7.95, -97.19, 2)
MoveToLocation(NPC, -48.35, -7.96, -153.06, 2, "heading2")
end

function heading2(NPC)
SetHeading(NPC, 29.93)
AddTimer(NPC, 7000, "movement_loop_start", 1)
end   
    
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	AddTimer(NPC, 7000, "movement_loop_start", 1)
end

function respawn(NPC)
	spawn(NPC)
end