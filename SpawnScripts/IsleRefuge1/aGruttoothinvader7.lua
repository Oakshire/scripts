--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothinvader7.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 07:09:07
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
	MovementLoopAddLocation(NPC, 49.92, -4.43, 226.12, 2, 5)
	MovementLoopAddLocation(NPC, 55.19, -4.45, 224.58, 2, 0)
	MovementLoopAddLocation(NPC, 64.6, -4.48, 226.08, 4, 0)
	MovementLoopAddLocation(NPC, 70.7, -4.5, 225.94, 4, 0)
	MovementLoopAddLocation(NPC, 81.92, -4.54, 222.01, 4, 0)
	MovementLoopAddLocation(NPC, 86.32, -4.38, 207.3, 4, 0)
	MovementLoopAddLocation(NPC, 85.13, -4.46, 201.14, 4, 0)
	MovementLoopAddLocation(NPC, 74.38, -4.51, 188.3, 4, 0)
	MovementLoopAddLocation(NPC, 74.56, -4.5, 182.07, 4, 0)
	MovementLoopAddLocation(NPC, 70.25, -4.49, 175.18, 4, 0)
	MovementLoopAddLocation(NPC, 70.16, -4.3, 161.55, 4, 0)
	MovementLoopAddLocation(NPC, 70.25, -4.49, 175.18, 4, 0)
	MovementLoopAddLocation(NPC, 70.16, -4.3, 161.55, 4, 0)
	MovementLoopAddLocation(NPC, 70.25, -4.49, 175.18, 4, 0)
	MovementLoopAddLocation(NPC, 70.16, -4.3, 161.55, 4, 300)
end
