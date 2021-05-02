--[[
    Script Name    : SpawnScripts/Freeport/MaldreyaDarkheart.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.02 09:05:28
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
MoveToLocation(NPC, -82.80, -7.28, -176.61, 2)
MoveToLocation(NPC, -67.46, -9.91, -172.30, 2)
MoveToLocation(NPC, -70.90, -9.91, -159.75, 2, "heading")
end

function heading(NPC)
SetHeading(NPC, 156.22)
AddTimer(NPC, 10000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
MoveToLocation(NPC, -67.46, -9.91, -172.30, 2)
MoveToLocation(NPC, -82.80, -7.28, -176.61, 2)
MoveToLocation(NPC, -85.73, -7.02, -184.78, 2, "heading2")
end

function heading2(NPC)
SetHeading(NPC, 15.00)
AddTimer(NPC, 10000, "movement_loop_continue", 1)
end   

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "What business have you with Dismal Rage?", "", 0 ,0, Spawn)
	AddTimer(NPC, 10000, "movement_loop_start", 1)
end

function respawn(NPC)
	spawn(NPC)
end