--[[
    Script Name    : SpawnScripts/DownBelow_Classic/amaleficarachnid6.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.09 08:01:18
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
	MovementLoopAddLocation(NPC, -108.65, -0.11, -170.64, 2, 4)
	MovementLoopAddLocation(NPC, -110.24, -0.14, -168.55, 2, 0)
	MovementLoopAddLocation(NPC, -113.95, 0.36, -168.17, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -113.95, 0.36, -168.17, 2, 0)
	MovementLoopAddLocation(NPC, -109.66, -0.07, -167.46, 2, 0)
	MovementLoopAddLocation(NPC, -107.74, -0.09, -169.4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -107.74, -0.09, -169.4, 2, 0)
	MovementLoopAddLocation(NPC, -108.46, -0.03, -167.26, 2, 0)
	MovementLoopAddLocation(NPC, -109.92, -0.09, -167.81, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -109.92, -0.09, -167.81, 2, 0)
	MovementLoopAddLocation(NPC, -106.5, -0.1, -170.54, 2, 0)
	MovementLoopAddLocation(NPC, -105.2, -0.1, -173.24, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -105.2, -0.1, -173.24, 2, 0)
	MovementLoopAddLocation(NPC, -108.32, -0.05, -172.02, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -108.32, -0.05, -172.02, 2, 0)
	MovementLoopAddLocation(NPC, -108.39, -0.09, -168.79, 2, 0)
	MovementLoopAddLocation(NPC, -109.51, -0.13, -168.85, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -109.51, -0.13, -168.85, 2, 0)
	MovementLoopAddLocation(NPC, -112.77, 0.36, -167.34, 2, 0)
	MovementLoopAddLocation(NPC, -115.35, -0.04, -168.85, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -115.35, -0.04, -168.85, 2, 0)
	MovementLoopAddLocation(NPC, -110.87, -0.13, -168.32, 2, 0)
	MovementLoopAddLocation(NPC, -106.4, -0.07, -169.91, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -106.4, -0.07, -169.91, 2, 0)
	MovementLoopAddLocation(NPC, -108.65, -0.11, -170.64, 2, 3)
end

