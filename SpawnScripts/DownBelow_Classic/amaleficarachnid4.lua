--[[
    Script Name    : SpawnScripts/DownBelow_Classic/amaleficarachnid4.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.09 08:01:26
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
	MovementLoopAddLocation(NPC, -107.87, -0.09, -177.12, 2, 4)
	MovementLoopAddLocation(NPC, -104.92, -0.08, -175.52, 2, 0)
	MovementLoopAddLocation(NPC, -105.41, -0.1, -172.7, 2, 0)
	MovementLoopAddLocation(NPC, -106.82, -0.06, -172.36, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -106.82, -0.06, -172.36, 2, 0)
	MovementLoopAddLocation(NPC, -105.4, -0.11, -173.79, 2, 0)
	MovementLoopAddLocation(NPC, -106.38, -0.12, -177.71, 2, 0)
	MovementLoopAddLocation(NPC, -108.22, -0.09, -179.4, 2,math.random(5,10))
	MovementLoopAddLocation(NPC, -108.22, -0.09, -179.4, 2, 0)
	MovementLoopAddLocation(NPC, -106.82, -0.12, -179.02, 2, 0)
	MovementLoopAddLocation(NPC, -105.05, -0.11, -176.77, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -105.05, -0.11, -176.77, 2, 0)
	MovementLoopAddLocation(NPC, -104.13, -0.05, -175.1, 2, 0)
	MovementLoopAddLocation(NPC, -108.48, -0.09, -179, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -108.48, -0.09, -179, 2, 0)
	MovementLoopAddLocation(NPC, -106.15, -0.14, -178.46, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -106.15, -0.14, -178.46, 2, 0)
	MovementLoopAddLocation(NPC, -107.87, -0.09, -177.12, 2, 3)
end

