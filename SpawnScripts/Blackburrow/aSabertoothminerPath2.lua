--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothminerPath2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.01 04:05:57
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll2.lua")
 	
local TheChomper = 5696


function spawn(NPC)

AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 16.22, -9.73, -88.86, 2, 6)
	MovementLoopAddLocation(NPC, 9.96, -9.73, -89.47, 2, 0)
	MovementLoopAddLocation(NPC, 9.96, -9.73, -89.47, 2, math.random(6,9))
	MovementLoopAddLocation(NPC, 10.59, -9.64, -87.36, 2, 0)
	MovementLoopAddLocation(NPC, 10.59, -9.64, -87.36, 2, math.random(6,9))
	MovementLoopAddLocation(NPC, 12.39, -9.73, -87.62, 2, 0)
	MovementLoopAddLocation(NPC, 12.39, -9.73, -87.62, 2, math.random(6,9))
	MovementLoopAddLocation(NPC, 16.89, -9.73, -88.04, 2, 0)
	MovementLoopAddLocation(NPC, 16.89, -9.73, -88.04, 2, math.random(6,9))
	MovementLoopAddLocation(NPC, 16.82, -9.71, -86.03, 2, 0)
	MovementLoopAddLocation(NPC, 16.82, -9.71, -86.03, 2, math.random(6,9))
	MovementLoopAddLocation(NPC, 16.25, -9.73, -87.21, 2, 0)
	MovementLoopAddLocation(NPC, 13.75, -9.89, -87.46, 2, 0)
	MovementLoopAddLocation(NPC, 13.75, -9.89, -87.46, 2, math.random(6,9))
	MovementLoopAddLocation(NPC, 13.05, -9.69, -85.21, 2, 0)
	MovementLoopAddLocation(NPC, 13.05, -9.69, -85.21, 2, math.random(6,9))
	MovementLoopAddLocation(NPC, 12.44, -9.41, -85.75, 2, 0)
	MovementLoopAddLocation(NPC, 13.51, -9.86, -89.83, 2, 0)
	MovementLoopAddLocation(NPC, 13.51, -9.86, -89.83, 2, math.random(6,9))
	MovementLoopAddLocation(NPC, 15.53, -9.73, -87.26, 2, 0)
	MovementLoopAddLocation(NPC, 15.53, -9.73, -87.26, 2, math.random(6,9))
	MovementLoopAddLocation(NPC, 13.79, -9.77, -88.4, 2, 0)
	MovementLoopAddLocation(NPC, 13.79, -9.77, -88.4, 2, math.random(6,9))
end

