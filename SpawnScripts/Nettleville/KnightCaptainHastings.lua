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
    MovementLoopAddLocation(NPC, 660.35, -20.39, 270.5, 2, 45)
	MovementLoopAddLocation(NPC, 660.75, -20.34, 273.54, 2, 0)
	MovementLoopAddLocation(NPC, 664.72, -20.21, 284.51, 2, 0)
	MovementLoopAddLocation(NPC, 667.53, -19.95, 293.1, 2, 0)
	MovementLoopAddLocation(NPC, 674.78, -20.14, 296.04, 2, 45)
	MovementLoopAddLocation(NPC, 672.68, -20.12, 296.97, 2, 0)
	MovementLoopAddLocation(NPC, 669.51, -20.18, 299.32, 2, 0)
	MovementLoopAddLocation(NPC, 662.97, -20.44, 318.56, 2, 45)
	MovementLoopAddLocation(NPC, 664.84, -20.44, 317.66, 2, 0)
	MovementLoopAddLocation(NPC, 663.91, -20.43, 308.87, 2, 0)
	MovementLoopAddLocation(NPC, 665.98, -20.22, 298.33, 2, 0)
	MovementLoopAddLocation(NPC, 666.53, -19.98, 292.88, 2, 0)
	MovementLoopAddLocation(NPC, 664.47, -20.25, 283.14, 2, 0)
end


