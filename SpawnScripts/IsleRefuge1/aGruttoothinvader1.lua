--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothinvader1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 05:09:40
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
	MovementLoopAddLocation(NPC, 214.83, -3.3, 137.39, 2, 0)
	MovementLoopAddLocation(NPC, 214.42, -3.3, 139.42, 2, 0)
	MovementLoopAddLocation(NPC, 212.34, -3.33, 141.06, 2, 0)
	MovementLoopAddLocation(NPC, 186.57, -3.2, 150.23, 2, 0)
	MovementLoopAddLocation(NPC, 179.52, -3.2, 157.25, 4, 0)
	MovementLoopAddLocation(NPC, 171.97, -3.2, 161.46, 4, 0)
	MovementLoopAddLocation(NPC, 163.01, -3.38, 162.98, 4, 0)
	MovementLoopAddLocation(NPC, 155.71, -3.4, 160.22, 4, 0)
	MovementLoopAddLocation(NPC, 149.26, -3.56, 159.13, 4, 0)
	MovementLoopAddLocation(NPC, 145.34, -3.65, 160.15, 4, 0)
	MovementLoopAddLocation(NPC, 139.14, -3.7, 163.37, 4, 0)
	MovementLoopAddLocation(NPC, 121.45, -3.8, 164.48, 4, 0)
	MovementLoopAddLocation(NPC, 89.44, -4.56, 172, 4, 0)
	MovementLoopAddLocation(NPC, 84.7, -4.36, 167.43, 4, 0)
	MovementLoopAddLocation(NPC, 81.45, -4.36, 158.93, 4, 0)
	MovementLoopAddLocation(NPC, 71.26, -4.32, 159.48, 4, 0)
	MovementLoopAddLocation(NPC, 70.26, -4.3, 163.94, 4, 0)
	MovementLoopAddLocation(NPC, 71.26, -4.32, 159.48, 4, 0)
	MovementLoopAddLocation(NPC, 70.26, -4.3, 163.94, 4, 0)
	MovementLoopAddLocation(NPC, 71.26, -4.32, 159.48, 4, 0)
	MovementLoopAddLocation(NPC, 70.26, -4.3, 163.94, 4, 300)
end

