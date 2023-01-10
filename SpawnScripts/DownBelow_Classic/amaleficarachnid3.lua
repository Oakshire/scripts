--[[
    Script Name    : SpawnScripts/DownBelow_Classic/amaleficarachnid3.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.09 08:01:14
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
	MovementLoopAddLocation(NPC, -104.43, -0.01, -179.29, 2, 4)
	MovementLoopAddLocation(NPC, -103.66, -0.05, -175.64, 2, 0)
	MovementLoopAddLocation(NPC, -105.07, -0.09, -172.87, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -105.07, -0.09, -172.87, 2, 0)
	MovementLoopAddLocation(NPC, -105.86, -0.13, -176.76, 2, 0)
	MovementLoopAddLocation(NPC, -108.38, -0.09, -180.01, 2, 0)
	MovementLoopAddLocation(NPC, -108.65, -0.09, -180.98, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -108.65, -0.09, -180.98, 2, 0)
	MovementLoopAddLocation(NPC, -107.85, -0.09, -178.1, 2, 0)
	MovementLoopAddLocation(NPC, -105.7, -0.14, -176.83, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -105.7, -0.14, -176.83, 2, 0)
	MovementLoopAddLocation(NPC, -105.6, -0.09, -179.33, 2, 0)
	MovementLoopAddLocation(NPC, -107.38, -0.11, -179.25, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -107.38, -0.11, -179.25, 2, 0)
	MovementLoopAddLocation(NPC, -105.97, -0.07, -180.25, 2, 0)
	MovementLoopAddLocation(NPC, -104.43, -0.01, -179.29, 2, 3)
end

