--[[
    Script Name    : SpawnScripts/Freeport/aMilitiaofficer55966.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.27 07:04:12
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end

function movement_loop_start(NPC)
MoveToLocation(NPC, 78.43, -20.16, 23.91, 2)
MoveToLocation(NPC, 77.38, -20.18, 55.01, 2)
MoveToLocation(NPC, 88.39, -20.18, 74.50, 2)
MoveToLocation(NPC, 85.11, -20.24, 78.97, 2)
MoveToLocation(NPC, 88.18, -20.19, 75.60, 2) 
MoveToLocation(NPC, 78.22, -20.17, 62.17, 2)
MoveToLocation(NPC, 77.09, -20.20, 24.90, 2)
MoveToLocation(NPC, 105.17, -19.17, 6.67, 2)
MoveToLocation(NPC, 121.72, -17.22, -3.85, 2)
MoveToLocation(NPC, 122.29, -17.16, -3.99, 2, "heading")
end

function heading(NPC)
SetHeading(NPC, 290.12)
AddTimer(NPC, 7000, 1, "movement_loop_start")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	movement_loop_start(NPC)
end

function respawn(NPC)
	spawn(NPC)
end