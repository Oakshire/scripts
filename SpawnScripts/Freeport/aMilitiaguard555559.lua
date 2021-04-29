--[[
    Script Name    : SpawnScripts/Freeport/aMilitiaguard555559.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.29 09:04:51
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end


function movement_loop_start(NPC)
MoveToLocation(NPC, 186.73, -3.67, 96.10, 2)
MoveToLocation(NPC, 188.48, -3.64, 101.79, 2)
MoveToLocation(NPC, 200.94, -10.51, 115.77, 2)
MoveToLocation(NPC, 194.95, -10.52, 122.10, 2)
MoveToLocation(NPC, 167.96, -16.11, 97.72, 2)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end