--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothinvader3.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 05:09:48
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
	MovementLoopAddLocation(NPC, 217.74, -3.79, 139.16, 2, 0)
	MovementLoopAddLocation(NPC, 213.11, -3.3, 141.11, 2, 0)
	MovementLoopAddLocation(NPC, 208.12, -3.3, 142.15, 2, 0)
	MovementLoopAddLocation(NPC, 192.04, -3.2, 148.44, 4, 0)
	MovementLoopAddLocation(NPC, 187.14, -3.2, 150.5, 4, 0)
	MovementLoopAddLocation(NPC, 173.77, -3.2, 160.76, 4, 0)
	MovementLoopAddLocation(NPC, 166.63, -3.23, 162.26, 4, 0)
	MovementLoopAddLocation(NPC, 160.01, -3.4, 162.01, 4, 0)
	MovementLoopAddLocation(NPC, 152.03, -3.4, 158.89, 4, 0)
	MovementLoopAddLocation(NPC, 148.4, -3.58, 159.15, 4, 0)
	MovementLoopAddLocation(NPC, 142.5, -3.7, 162, 4, 0)
	MovementLoopAddLocation(NPC, 137.44, -3.7, 163.64, 4, 0)
	MovementLoopAddLocation(NPC, 123.01, -3.8, 164.2, 4, 0)
	MovementLoopAddLocation(NPC, 102.2, -4.2, 170.06, 4, 0)
	MovementLoopAddLocation(NPC, 85.19, -4.55, 173.4, 4, 0)
	MovementLoopAddLocation(NPC, 78.36, -4.33, 171.27, 4, 0)
	MovementLoopAddLocation(NPC, 72.88, -4.34, 168.11, 4, 0)
	MovementLoopAddLocation(NPC, 70.81, -4.31, 161.2, 4, 0)
	MovementLoopAddLocation(NPC, 72.88, -4.34, 168.11, 4, 0)
	MovementLoopAddLocation(NPC, 70.81, -4.31, 161.2, 4, 0)
	MovementLoopAddLocation(NPC, 72.88, -4.34, 168.11, 4, 0)
	MovementLoopAddLocation(NPC, 70.81, -4.31, 161.2, 4, 300)
end


