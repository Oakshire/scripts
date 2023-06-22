--[[
    Script Name    : SpawnScripts/TheRuins_Classic/ananchorgrappler1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.06.22 01:06:12
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -166.32, -9.34, 67.86, 2, 0)
	MovementLoopAddLocation(NPC, -172.36, -11.28, 68.19, 2, 0)
	MovementLoopAddLocation(NPC, -184.66, -12.73, 68.23, 2, 0)
	MovementLoopAddLocation(NPC, -191.7, -12.1, 69.89, 2, 0)
	MovementLoopAddLocation(NPC, -198.45, -14.5, 76.39, 2, 0)
	MovementLoopAddLocation(NPC, -199.06, -14.41, 82.37, 2, 0)
	MovementLoopAddLocation(NPC, -195.26, -13.74, 87.03, 2, 0)
	MovementLoopAddLocation(NPC, -188.64, -13.52, 88.71, 2, 0)
	MovementLoopAddLocation(NPC, -175.05, -11.1, 89.2, 2, 0)
	MovementLoopAddLocation(NPC, -190.68, -13.82, 88.64, 2, 0)
	MovementLoopAddLocation(NPC, -196.45, -13.28, 85.28, 2, 0)
	MovementLoopAddLocation(NPC, -196.89, -13.28, 75.04, 2, 0)
	MovementLoopAddLocation(NPC, -193.56, -13.28, 70.61, 2, 0)
	MovementLoopAddLocation(NPC, -189.06, -13.17, 69, 2, 0)
	MovementLoopAddLocation(NPC, -166.32, -9.34, 67.86, 2, 0)
end

