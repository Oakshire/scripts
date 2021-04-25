--[[
    Script Name    : SpawnScripts/Freeport/aMilitiacommander.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.25 10:04:54
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 74.86, -10.04, -30.61, 2, 10)
	MovementLoopAddLocation(NPC, 88.11, -10, -41.94, 2, 0)
	MovementLoopAddLocation(NPC, 89.77, -10.03, -47.38, 2, 10)
   end