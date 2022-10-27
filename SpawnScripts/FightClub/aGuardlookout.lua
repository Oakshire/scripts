--[[
    Script Name    : SpawnScripts/FightClub/aGuardlookout.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 01:10:28
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -5.6, -1.99, -6.4, 2, 22)
	MovementLoopAddLocation(NPC, -5.96, -1.99, -6.57, 2, 0)
	MovementLoopAddLocation(NPC, -4.9, -1.99, -3.41, 2, 22)
	MovementLoopAddLocation(NPC, -3.93, -1.99, -3.43, 2, 0)
	MovementLoopAddLocation(NPC, -5.63, -1.99, -4.02, 2, 22)
	MovementLoopAddLocation(NPC, -6.12, -1.99, -4.49, 2, 0)
	MovementLoopAddLocation(NPC, -5.75, -1.99, -6.59, 2, 22)
	MovementLoopAddLocation(NPC, -6.12, -1.99, -4.49, 2, 0)
	MovementLoopAddLocation(NPC, -5.63, -1.99, -4.02, 2, 22)
	MovementLoopAddLocation(NPC, -3.93, -1.99, -3.43, 2, 0)
	MovementLoopAddLocation(NPC, -4.9, -1.99, -3.41, 2, 22)
	MovementLoopAddLocation(NPC, -5.96, -1.99, -6.57, 2, 0)
	MovementLoopAddLocation(NPC, -5.6, -1.99, -6.4, 2, 22)
end