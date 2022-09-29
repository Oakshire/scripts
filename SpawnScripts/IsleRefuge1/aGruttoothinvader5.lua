--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothinvader5.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 05:09:29
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
	MovementLoopAddLocation(NPC, 216.8, -3.3, 143.91, 2, 0)
	MovementLoopAddLocation(NPC, 213.26, -3.3, 141.76, 2, 0)
	MovementLoopAddLocation(NPC, 203.19, -3.29, 144.38, 2, 0)
	MovementLoopAddLocation(NPC, 188.49, -3.2, 149.91, 2, 0)
	MovementLoopAddLocation(NPC, 178.15, -3.2, 158.89, 2, 0)
	MovementLoopAddLocation(NPC, 167.44, -3.2, 163.18, 2, 0)
	MovementLoopAddLocation(NPC, 150.27, -3.49, 158.77, 4, 0)
	MovementLoopAddLocation(NPC, 137.34, -3.7, 162.69, 4, 0)
	MovementLoopAddLocation(NPC, 121.06, -3.8, 164.5, 4, 0)
	MovementLoopAddLocation(NPC, 85.98, -4.55, 173.54, 4, 0)
	MovementLoopAddLocation(NPC, 78.25, -4.32, 179.23, 4, 0)
	MovementLoopAddLocation(NPC, 70.73, -4.49, 176.93, 4, 0)
	MovementLoopAddLocation(NPC, 69.94, -4.29, 171.42, 4, 0)
	MovementLoopAddLocation(NPC, 70.73, -4.49, 176.93, 4, 0)
	MovementLoopAddLocation(NPC, 69.94, -4.29, 171.42, 4, 0)
	MovementLoopAddLocation(NPC, 70.73, -4.49, 176.93, 4, 0)
	MovementLoopAddLocation(NPC, 69.94, -4.29, 171.42, 4, 300)
end

