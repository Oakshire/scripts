--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothinvader2.lua
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
	MovementLoopAddLocation(NPC, 215.3, -3.3, 138.64, 2, 2)
	MovementLoopAddLocation(NPC, 213.81, -3.3, 140.63, 2, 0)
	MovementLoopAddLocation(NPC, 208.16, -3.3, 142.22, 2, 0)
	MovementLoopAddLocation(NPC, 188.91, -3.2, 149.26, 2, 0)
	MovementLoopAddLocation(NPC, 181.06, -3.2, 156.06, 2, 0)
	MovementLoopAddLocation(NPC, 173.75, -3.2, 160.56, 4, 0)
	MovementLoopAddLocation(NPC, 166.83, -3.22, 162.98, 4, 0)
	MovementLoopAddLocation(NPC, 160.57, -3.4, 162.14, 4, 0)
	MovementLoopAddLocation(NPC, 151.8, -3.4, 158.9, 4, 0)
	MovementLoopAddLocation(NPC, 147.27, -3.62, 159.57, 4, 0)
	MovementLoopAddLocation(NPC, 141.9, -3.7, 162.9, 4, 0)
	MovementLoopAddLocation(NPC, 135.65, -3.7, 163.98, 4, 0)
	MovementLoopAddLocation(NPC, 123.51, -3.8, 164.42, 4, 0)
	MovementLoopAddLocation(NPC, 93.48, -4.4, 171.81, 4, 0)
	MovementLoopAddLocation(NPC, 85.99, -4.36, 168.15, 4, 0)
	MovementLoopAddLocation(NPC, 81.31, -4.36, 159.48, 4, 0)
	MovementLoopAddLocation(NPC, 71.64, -4.33, 162.45, 4, 0)
	MovementLoopAddLocation(NPC, 69.35, -4.29, 158.03, 4, 0)
	MovementLoopAddLocation(NPC, 71.64, -4.33, 162.45, 4, 0)
	MovementLoopAddLocation(NPC, 69.35, -4.29, 158.03, 4, 0)
	MovementLoopAddLocation(NPC, 71.64, -4.33, 162.45, 4, 0)
	MovementLoopAddLocation(NPC, 69.35, -4.29, 158.03, 4, 300)
end

