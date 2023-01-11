--[[
    Script Name    : SpawnScripts/DownBelow_Classic/avenomspitterRoam.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.10 09:01:20
    Script Purpose : 
                   : 
--]]

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
	MovementLoopAddLocation(NPC, -129.17, 0, -205.11, 2, 4)
	MovementLoopAddLocation(NPC, -124.77, 0, -200.32, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -124.77, 0, -200.32, 2, 0)
	MovementLoopAddLocation(NPC, -126.25, 0, -197.73, 2, 0)
	MovementLoopAddLocation(NPC, -126.68, 0, -194.85, 2, 0)
	MovementLoopAddLocation(NPC, -125.22, 0, -193.28, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -125.22, 0, -193.28, 2, 0)
	MovementLoopAddLocation(NPC, -126.62, 0, -196.06, 2, 0)
	MovementLoopAddLocation(NPC, -126.37, 0, -200.66, 2, 0)
	MovementLoopAddLocation(NPC, -123.53, 0, -202.65, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -123.53, 0, -202.65, 2, 0)
	MovementLoopAddLocation(NPC, -123.53, 0, -202.65, 2, 0)
	MovementLoopAddLocation(NPC, -124.65, 0, -201.74, 2, 0)
	MovementLoopAddLocation(NPC, -121.98, 0, -199.6, 2, 0)
	MovementLoopAddLocation(NPC, -121.82, 0, -197.94, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -121.82, 0, -197.94, 2, 0)
	MovementLoopAddLocation(NPC, -122.95, 0, -198.38, 2, 0)
	MovementLoopAddLocation(NPC, -127.06, 0, -197.8, 2, 0)
	MovementLoopAddLocation(NPC, -128.27, 0, -194.81, 2, 0)
	MovementLoopAddLocation(NPC, -126.95, 0, -193.13, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -126.95, 0, -193.13, 2, 0)
	MovementLoopAddLocation(NPC, -129.52, 0, -195.83, 2, 0)
	MovementLoopAddLocation(NPC, -129.98, 0, -201.38, 2, 0)
	MovementLoopAddLocation(NPC, -129.17, 0, -205.11, 2, 3)
end

