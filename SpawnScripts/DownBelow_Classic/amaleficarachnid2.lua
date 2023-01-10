--[[
    Script Name    : SpawnScripts/DownBelow_Classic/amaleficarachnid2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.09 08:01:54
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
	MovementLoopAddLocation(NPC, -108.34, -0.14, -183.42, 2, 4)
	MovementLoopAddLocation(NPC, -108.3, -0.09, -179.57, 2, 0)
	MovementLoopAddLocation(NPC, -106.89, -0.1, -177.51, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -106.89, -0.1, -177.51, 2, 0)
	MovementLoopAddLocation(NPC, -106.77, -0.12, -179.3, 2, 0)
	MovementLoopAddLocation(NPC, -105.28, -0.05, -179.77, 2, 0)
	MovementLoopAddLocation(NPC, -104.23, -0.02, -178.47, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -104.23, -0.02, -178.47, 2, 0)
	MovementLoopAddLocation(NPC, -108.73, -0.09, -179.88, 2, 0)
	MovementLoopAddLocation(NPC, -109.17, 0.14, -186.81, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -109.17, 0.14, -186.81, 2, 0)
	MovementLoopAddLocation(NPC, -109.46, -0.06, -182.21, 2, 0)
	MovementLoopAddLocation(NPC, -105.49, -0.09, -179.22, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -105.49, -0.09, -179.22, 2, 0)
	MovementLoopAddLocation(NPC, -109.33, -0.09, -180.69, 2, 0)
	MovementLoopAddLocation(NPC, -108.34, -0.14, -183.42, 2, 3)
end

