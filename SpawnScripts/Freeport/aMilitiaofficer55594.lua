--[[
    Script Name    : SpawnScripts/Freeport/aMilitiaofficer55594.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.02 09:05:17
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
MoveToLocation(NPC, -119.92, -7.80, -115.08, 2)
MoveToLocation(NPC, -95.39, -8.05, -103.14, 2)
MoveToLocation(NPC, -61.40, -7.94, -107.71, 2, "heading")
end

function heading(NPC)
SetHeading(NPC, 282.73)
AddTimer(NPC, 7000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
MoveToLocation(NPC, -95.39, -8.05, -103.14, 2)
MoveToLocation(NPC, -119.92, -7.80, -115.08, 2)
MoveToLocation(NPC, -121.81, -8.06, -119.58, 2, "heading2")
end

function heading2(NPC)
SetHeading(NPC, 358.15)
AddTimer(NPC, 7000, "movement_loop_start", 1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	AddTimer(NPC, 7000, "movement_loop_start", 1)
end

function respawn(NPC)
	spawn(NPC)
end