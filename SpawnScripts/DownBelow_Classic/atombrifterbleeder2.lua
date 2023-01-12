--[[
    Script Name    : SpawnScripts/DownBelow_Classic/atombrifterbleeder2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.11 09:01:06
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
	MovementLoopAddLocation(NPC, -174.4, 1.17, -117.49, 2, 0)
	MovementLoopAddLocation(NPC, -175.81, 1.17, -116.41, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -175.81, 1.17, -116.41, 2, 0)
	MovementLoopAddLocation(NPC, -172.89, 1.17, -117.28, 2, 0)
	MovementLoopAddLocation(NPC, -170.92, 1.17, -121.85, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -170.92, 1.17, -121.85, 2, 0)
	MovementLoopAddLocation(NPC, -172.61, 1.17, -120.75, 2, 0)
	MovementLoopAddLocation(NPC, -176.21, 1.17, -120.81, 2, 0)
	MovementLoopAddLocation(NPC, -178.38, 1.17, -123.69, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -178.38, 1.17, -123.69, 2, 0)
	MovementLoopAddLocation(NPC, -178.29, 1.17, -121.91, 2, 0)
	MovementLoopAddLocation(NPC, -179.86, 1.17, -118.14, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -179.86, 1.17, -118.14, 2, 0)
	MovementLoopAddLocation(NPC, -178.22, 1.17, -121.76, 2, 0)
	MovementLoopAddLocation(NPC, -178.67, 1.17, -125.23, 2, 0)
	MovementLoopAddLocation(NPC, -179.87, 1.17, -126.85, 2, 0)
	MovementLoopAddLocation(NPC, -181.08, 1.17, -127.85, 2, 0)
	MovementLoopAddLocation(NPC, -182.38, 1.17, -127.49, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -182.38, 1.17, -127.49, 2, 0)
	MovementLoopAddLocation(NPC, -179.09, 1.17, -127.5, 2, 0)
	MovementLoopAddLocation(NPC, -177.1, 1.17, -126.07, 2, 0)
	MovementLoopAddLocation(NPC, -173.5, 1.17, -121.93, 2, 0)
	MovementLoopAddLocation(NPC, -172.32, 1.17, -118.4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -172.32, 1.17, -118.4, 2, 0)
	MovementLoopAddLocation(NPC, -174.4, 1.17, -117.49, 2, math.random(5,10))
end

