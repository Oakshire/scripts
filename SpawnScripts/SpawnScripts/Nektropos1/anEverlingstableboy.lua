--[[
    Script Name    : SpawnScripts/Nektropos1/anEverlingstableboy.lua
    Script Author  : smash
    Script Date    : 2018.06.20 10:06:35
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -24, 0, -29, 2, 0)
	MovementLoopAddLocation(NPC, -21, 0, -26, 2, 0)
	MovementLoopAddLocation(NPC, -24, 0, -22, 2, 0)
	MovementLoopAddLocation(NPC, -25, 0, -17, 2, 0)
	MovementLoopAddLocation(NPC, -18, 0, -12, 2, 0)
	MovementLoopAddLocation(NPC, -25, 0, -17, 2, 0)
	MovementLoopAddLocation(NPC, -24, 0, -22, 2, 0)
	MovementLoopAddLocation(NPC, -21, 0, -26, 2, 0)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end