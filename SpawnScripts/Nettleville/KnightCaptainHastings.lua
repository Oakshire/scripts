--[[
    Script Name    : SpawnScripts/Nettleville/KnightCaptainHastings.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.20 01:06:53
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
	MovementLoopAddLocation(NPC, 660.76, -20.36, 272.13, 2, 25)
	MovementLoopAddLocation(NPC, 668.99, -20.07, 296.99, 2, 0)
	MovementLoopAddLocation(NPC, 670.71, -20.25, 305.57, 2, 15)
	MovementLoopAddLocation(NPC, 670.03, -20.25, 307.23, 2, 0)
	MovementLoopAddLocation(NPC, 665.52, -20.02, 289.23, 2, 0)
	MovementLoopAddLocation(NPC, 660.71, -20.39, 270.83, 2, 25)
	MovementLoopAddLocation(NPC, 667.03, -19.98, 288.97, 2, 0)
	MovementLoopAddLocation(NPC, 668.77, -20.25, 306.13, 2, 0)
	MovementLoopAddLocation(NPC, 662.91, -20.44, 318.84, 2, 25)
	MovementLoopAddLocation(NPC, 665.5, -20.44, 319.63, 2, 0)
	MovementLoopAddLocation(NPC, 665.76, -20.31, 301.06, 2, 0)
	MovementLoopAddLocation(NPC, 667.39, -19.94, 291.92, 2, 0)
end


