--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothinvader6.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 05:09:45
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGoblin1.lua")

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
	MovementLoopAddLocation(NPC, 216.91, -3.34, 145.55, 2, 0)
	MovementLoopAddLocation(NPC, 214.71, -3.3, 142.35, 2, 0)
	MovementLoopAddLocation(NPC, 211.47, -3.36, 142.4, 2, 0)
	MovementLoopAddLocation(NPC, 204.83, -3.29, 144.21, 2, 0)
	MovementLoopAddLocation(NPC, 190.57, -3.2, 149.64, 2, 0)
	MovementLoopAddLocation(NPC, 184.06, -3.2, 153.49, 2, 0)
	MovementLoopAddLocation(NPC, 176.97, -3.2, 159.37, 4, 0)
	MovementLoopAddLocation(NPC, 164.66, -3.27, 163.15, 4, 0)
	MovementLoopAddLocation(NPC, 150.25, -3.48, 159.15, 4, 0)
	MovementLoopAddLocation(NPC, 140.3, -3.7, 163.39, 4, 0)
	MovementLoopAddLocation(NPC, 121.3, -3.8, 164.48, 4, 0)
	MovementLoopAddLocation(NPC, 91.6, -4.43, 171.83, 4, 0)
	MovementLoopAddLocation(NPC, 78.94, -4.33, 180.22, 4, 0)
	MovementLoopAddLocation(NPC, 71.12, -4.49, 177.39, 4, 0)
	MovementLoopAddLocation(NPC, 71.15, -4.3, 171.71, 4, 0)
	MovementLoopAddLocation(NPC, 71.12, -4.49, 177.39, 4, 0)
	MovementLoopAddLocation(NPC, 71.15, -4.3, 171.71, 4, 0)
	MovementLoopAddLocation(NPC, 71.12, -4.49, 177.39, 4, 0)
	MovementLoopAddLocation(NPC, 71.15, -4.3, 171.71, 4, 300)
end

