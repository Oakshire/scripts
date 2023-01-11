--[[
    Script Name    : SpawnScripts/DownBelow_Classic/avenomouskeeper1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.10 09:01:51
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
	MovementLoopAddLocation(NPC, -125.51, 0, -198.22, 2, 4)
	MovementLoopAddLocation(NPC, -124.89, 0, -198.22, 2, 0)
	MovementLoopAddLocation(NPC, -124.74, 0, -194.42, 2, 0)
	MovementLoopAddLocation(NPC, -121.46, 0, -192.42, 2, 0)
	MovementLoopAddLocation(NPC, -118.8, 0, -191.58, 2, 0)
	MovementLoopAddLocation(NPC, -110.52, 0, -191.94, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -110.52, 0, -191.94, 2, 0)
	MovementLoopAddLocation(NPC, -117, 0, -191.61, 2, 0)
	MovementLoopAddLocation(NPC, -121.39, 0, -192.47, 2, 0)
	MovementLoopAddLocation(NPC, -124.15, 0, -197.35, 2, 0)
	MovementLoopAddLocation(NPC, -124.14, 0, -200.33, 2, 0)
	MovementLoopAddLocation(NPC, -122.83, 0, -203.14, 2, 0)
	MovementLoopAddLocation(NPC, -117.72, 0, -204.07, 2, 0)
	MovementLoopAddLocation(NPC, -114.5, 0, -203.75, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -114.5, 0, -203.75, 2, 0)
	MovementLoopAddLocation(NPC, -117.19, 0, -204.2, 2, 0)
	MovementLoopAddLocation(NPC, -124.05, 0, -204.24, 2, 0)
	MovementLoopAddLocation(NPC, -127.37, 0, -199.57, 2, 0)
	MovementLoopAddLocation(NPC, -126.24, 0, -197.37, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -126.24, 0, -197.37, 2, 0)
	MovementLoopAddLocation(NPC, -126.35, 0, -201.34, 2, 0)
	MovementLoopAddLocation(NPC, -126.35, 0, -201.48, 2, 0)
	MovementLoopAddLocation(NPC, -123.61, 0, -202.31, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -123.61, 0, -202.31, 2, 0)
	MovementLoopAddLocation(NPC, -123.98, 0, -195.85, 2, 0)
	MovementLoopAddLocation(NPC, -121.77, 0, -192.12, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -121.77, 0, -192.12, 2, 0)
	MovementLoopAddLocation(NPC, -118.06, 0, -191.83, 2, 0)
	MovementLoopAddLocation(NPC, -113.37, 0, -192.37, 2, 0)
	MovementLoopAddLocation(NPC, -110.22, 0, -192.15, 2, 0)
	MovementLoopAddLocation(NPC, -109.91, 0, -190.16, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -109.91, 0, -190.16, 2, 0)
	MovementLoopAddLocation(NPC, -110.41, 0, -191.52, 2, 0)
	MovementLoopAddLocation(NPC, -117.32, 0, -191.61, 2, 0)
	MovementLoopAddLocation(NPC, -123.03, 0, -192.01, 2, 0)
	MovementLoopAddLocation(NPC, -125.71, 0, -194.57, 2, 0)
	MovementLoopAddLocation(NPC, -125.49, 0, -198.79, 2, 0)
	MovementLoopAddLocation(NPC, -123.06, 0, -203, 2, 0)
	MovementLoopAddLocation(NPC, -120.3, 0, -203.8, 2, 0)
	MovementLoopAddLocation(NPC, -118.91, 0, -203.86, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -118.91, 0, -203.86, 2, 0)
	MovementLoopAddLocation(NPC, -123.14, 0, -203.73, 2, 0)
	MovementLoopAddLocation(NPC, -125.54, 0, -200.1, 2, 0)
	MovementLoopAddLocation(NPC, -123.72, 0, -198.38, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -123.72, 0, -198.38, 2, 0)
end
