--[[
    Script Name    : SpawnScripts/DownBelow_Classic/atombrifterbleeder1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.11 09:01:07
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

AddTimer(NPC, math.random(4000,8000), "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -173.31, 1.17, -123.83, 2, 0)
	MovementLoopAddLocation(NPC, -176.6, 1.17, -120.59, 2, 0)
	MovementLoopAddLocation(NPC, -180.47, 1.17, -119.24, 2, 0)
	MovementLoopAddLocation(NPC, -186.67, 1.17, -118.53, 2, 0)
	MovementLoopAddLocation(NPC, -187.34, 1.17, -119.15, 2, 0)
	MovementLoopAddLocation(NPC, -187.76, 1.17, -120.66, 2, 0)
	MovementLoopAddLocation(NPC, -187.78, 1.17, -122.38, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -187.78, 1.17, -122.38, 2, 0)
	MovementLoopAddLocation(NPC, -187.86, 1.17, -121.05, 2, 0)
	MovementLoopAddLocation(NPC, -187.97, 1.17, -119.38, 2, 0)
	MovementLoopAddLocation(NPC, -186.95, 1.17, -118.52, 2, 0)
	MovementLoopAddLocation(NPC, -184.36, 1.17, -118.39, 2, 0)
	MovementLoopAddLocation(NPC, -182.65, 1.17, -120.52, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -182.65, 1.17, -120.52, 2, 0)
	MovementLoopAddLocation(NPC, -183.06, 1.17, -123.23, 2, 0)
	MovementLoopAddLocation(NPC, -185.04, 1.17, -124.52, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -185.04, 1.17, -124.52, 2, 0)
	MovementLoopAddLocation(NPC, -183.8, 1.17, -122.93, 2, 0)
	MovementLoopAddLocation(NPC, -183.22, 1.17, -120.5, 2, 0)
	MovementLoopAddLocation(NPC, -180, 1.17, -119.19, 2, 0)
	MovementLoopAddLocation(NPC, -175.44, 1.17, -119.93, 2, 0)
	MovementLoopAddLocation(NPC, -172.79, 1.17, -122.73, 2, 0)
	MovementLoopAddLocation(NPC, -171.65, 1.17, -124.95, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -171.65, 1.17, -124.95, 2, 0)
	MovementLoopAddLocation(NPC, -172.83, 1.17, -122.35, 2, 0)
	MovementLoopAddLocation(NPC, -172.93, 1.17, -118.99, 2, 0)
	MovementLoopAddLocation(NPC, -172.1, 1.17, -117.03, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -172.1, 1.17, -117.03, 2, 0)
	MovementLoopAddLocation(NPC, -172.83, 1.17, -118.78, 2, 0)
	MovementLoopAddLocation(NPC, -175.76, 1.17, -119.3, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -175.76, 1.17, -119.3, 2, 0)
	MovementLoopAddLocation(NPC, -174.43, 1.17, -120.81, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -174.43, 1.17, -120.81, 2, 0)
	MovementLoopAddLocation(NPC, -176.77, 1.17, -122.73, 2, 0)
	MovementLoopAddLocation(NPC, -179.4, 1.17, -123.53, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -179.4, 1.17, -123.53, 2, 0)
	MovementLoopAddLocation(NPC, -176.29, 1.17, -121.93, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -176.29, 1.17, -121.93, 2, 0)
	MovementLoopAddLocation(NPC, -172.82, 1.17, -121.92, 2, 0)
	MovementLoopAddLocation(NPC, -170.83, 1.17, -123.8, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -170.83, 1.17, -123.8, 2, 0)
	MovementLoopAddLocation(NPC, -173.31, 1.17, -123.83, 2, math.random(5,10))
end

