--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothminerPath1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.01 04:05:17
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
    spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 58.04, -5.25, -67.93, 2, 6)
	MovementLoopAddLocation(NPC, 59.69, -5.2, -75.99, 2, math.random(6,9))
	MovementLoopAddLocation(NPC, 65.36, -5.24, -70.52, 2, 0)
	MovementLoopAddLocation(NPC, 65.53, -5.32, -69.64, 2, 0)
	MovementLoopAddLocation(NPC, 65.53, -5.32, -69.64, 2, math.random(6,9))
	MovementLoopAddLocation(NPC, 57.71, -5.2, -72.71, 2, 0)
	MovementLoopAddLocation(NPC, 57.71, -5.2, -72.71, 2, math.random(6,9))
	MovementLoopAddLocation(NPC, 60.77, -5.2, -73.78, 2, 0)
	MovementLoopAddLocation(NPC, 60.77, -5.2, -73.78, 2, math.random(6,9))
	MovementLoopAddLocation(NPC, 65.96, -5.2, -75.65, 2, 0)
	MovementLoopAddLocation(NPC, 65.96, -5.2, -75.65, 2, math.random(6,9))
	MovementLoopAddLocation(NPC, 63.94, -5.2, -71.74, 2, 0)
	MovementLoopAddLocation(NPC, 61, -5.2, -71.33, 2, 0)
	MovementLoopAddLocation(NPC, 61, -5.2, -71.33, 2, math.random(6,9))
	MovementLoopAddLocation(NPC, 66.59, -5.2, -76.01, 2, 0)
	MovementLoopAddLocation(NPC, 66.59, -5.2, -76.01, 2, math.random(6,9))
	MovementLoopAddLocation(NPC, 61.26, -5.2, -74.54, 2, 0)
	MovementLoopAddLocation(NPC, 61.26, -5.2, -74.54, 2, math.random(6,9))
	MovementLoopAddLocation(NPC, 58.46, -5.3, -68.13, 2, 0)
	MovementLoopAddLocation(NPC, 58.46, -5.3, -68.13, 2, math.random(6,9))
end

