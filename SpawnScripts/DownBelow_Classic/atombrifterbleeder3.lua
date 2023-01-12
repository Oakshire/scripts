--[[
    Script Name    : SpawnScripts/DownBelow_Classic/atombrifterbleeder3.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.11 09:01:14
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
	MovementLoopAddLocation(NPC, -180.31, 1.17, -120.72, 2, 0)
	MovementLoopAddLocation(NPC, -177.12, 1.17, -120.64, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -177.12, 1.17, -120.64, 2, 0)
	MovementLoopAddLocation(NPC, -177.95, 1.17, -122.21, 2, 0)
	MovementLoopAddLocation(NPC, -181.41, 1.17, -123.33, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -181.41, 1.17, -123.33, 2, 0)
	MovementLoopAddLocation(NPC, -177.37, 1.17, -125.55, 2, 0)
	MovementLoopAddLocation(NPC, -173.77, 1.17, -125.8, 2, 0)
	MovementLoopAddLocation(NPC, -171.4, 1.17, -124.67, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -171.4, 1.17, -124.67, 2, 0)
	MovementLoopAddLocation(NPC, -173.28, 1.17, -125.12, 2, 0)
	MovementLoopAddLocation(NPC, -174.73, 1.17, -124.45, 2, 0)
	MovementLoopAddLocation(NPC, -176.09, 1.17, -118.3, 2, 0)
	MovementLoopAddLocation(NPC, -177.28, 1.17, -116.95, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -177.28, 1.17, -116.95, 2, 0)
	MovementLoopAddLocation(NPC, -178.03, 1.17, -120.22, 2, 0)
	MovementLoopAddLocation(NPC, -179.48, 1.17, -122.26, 2, 0)
	MovementLoopAddLocation(NPC, -184.09, 1.17, -123.77, 2, 0)
	MovementLoopAddLocation(NPC, -184.59, 1.17, -125.72, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -184.59, 1.17, -125.72, 2, 0)
	MovementLoopAddLocation(NPC, -184.63, 1.17, -124.04, 2, 0)
	MovementLoopAddLocation(NPC, -178.56, 1.17, -121.75, 2, 0)
	MovementLoopAddLocation(NPC, -176.07, 1.17, -121.65, 2, 0)
	MovementLoopAddLocation(NPC, -173.47, 1.17, -119.74, 2, 0)
	MovementLoopAddLocation(NPC, -172.15, 1.17, -119.52, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -172.15, 1.17, -119.52, 2, 0)
	MovementLoopAddLocation(NPC, -173.8, 1.17, -120.19, 2, 0)
	MovementLoopAddLocation(NPC, -176.58, 1.17, -119.48, 2, 0)
	MovementLoopAddLocation(NPC, -178.61, 1.17, -117.84, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -178.61, 1.17, -117.84, 2, 0)
	MovementLoopAddLocation(NPC, -178.14, 1.17, -120.55, 2, 0)
	MovementLoopAddLocation(NPC, -179.22, 1.17, -122.95, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -179.22, 1.17, -122.95, 2, 0)
	MovementLoopAddLocation(NPC, -180.5, 1.17, -122.61, 2, 0)
	MovementLoopAddLocation(NPC, -180.31, 1.17, -120.72, 2, math.random(5,10))
end

