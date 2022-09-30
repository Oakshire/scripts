--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothprotectorP1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.13 09:09:28
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGoblin2.lua")

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
	MovementLoopAddLocation(NPC, -82.45, 1.66, -220.2, 2, 5)
	MovementLoopAddLocation(NPC, -87.91, 1.68, -213.52, 2, 0)
	MovementLoopAddLocation(NPC, -89.54, 1.69, -208.84, 2, 0)
	MovementLoopAddLocation(NPC, -90.14, 1.69, -206.07, 2, 0)
	MovementLoopAddLocation(NPC, -89.85, 1.68, -190.47, 2, 0)
	MovementLoopAddLocation(NPC, -89.17, 1.68, -187.44, 2, 0)
	MovementLoopAddLocation(NPC, -88.16, 1.68, -185.53, 2, 0)
	MovementLoopAddLocation(NPC, -86.2, 1.67, -183.54, 2, 0)
	MovementLoopAddLocation(NPC, -83.55, 1.66, -182.51, 2, 0)
	MovementLoopAddLocation(NPC, -76.97, 1.91, -181.5, 2, 0)
	MovementLoopAddLocation(NPC, -74.2, 2.12, -180.87, 2, 0)
	MovementLoopAddLocation(NPC, -72.11, 2.11, -178.95, 2, 0)
	MovementLoopAddLocation(NPC, -65.38, 2.08, -170.77, 2, 0)
	MovementLoopAddLocation(NPC, -63.03, 2.07, -169.2, 2, 0)
	MovementLoopAddLocation(NPC, -56.25, 2.05, -167.63, 2, 0)
	MovementLoopAddLocation(NPC, -52.88, 2.03, -162.13, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -52.88, 2.03, -162.13, 2, 0)
	MovementLoopAddLocation(NPC, -55.25, 2.04, -166.48, 2, 0)
	MovementLoopAddLocation(NPC, -56.01, 2.05, -167.5, 2, 0)
	MovementLoopAddLocation(NPC, -61.36, 2.07, -168.74, 2, 0)
	MovementLoopAddLocation(NPC, -62.76, 2.07, -169.15, 2, 0)
	MovementLoopAddLocation(NPC, -66.43, 2.09, -172.86, 2, 0)
	MovementLoopAddLocation(NPC, -68.31, 2.09, -175.98, 2, 0)
	MovementLoopAddLocation(NPC, -71.17, 2.11, -179.09, 2, 0)
	MovementLoopAddLocation(NPC, -73.52, 2.11, -180.48, 2, 0)
	MovementLoopAddLocation(NPC, -74.72, 2.12, -180.93, 2, 0)
	MovementLoopAddLocation(NPC, -81.74, 1.65, -181.62, 2, 0)
	MovementLoopAddLocation(NPC, -85.43, 1.67, -182.69, 2, 0)
	MovementLoopAddLocation(NPC, -87.93, 1.68, -184.97, 2, 0)
	MovementLoopAddLocation(NPC, -89.06, 1.68, -188.92, 2, 0)
	MovementLoopAddLocation(NPC, -89.87, 1.69, -206.39, 2, 0)
	MovementLoopAddLocation(NPC, -89.21, 1.69, -211.23, 2, 0)
	MovementLoopAddLocation(NPC, -82.45, 1.66, -220.2, 2, 0)
end

