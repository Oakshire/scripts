--[[
    Script Name    : SpawnScripts/DownBelow_Classic/amaleficarachnid1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.09 08:01:32
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
	MovementLoopAddLocation(NPC, -111.34, -0.01, -183.76, 2, 4)
	MovementLoopAddLocation(NPC, -110.02, -0.01, -184, 2, 0)
	MovementLoopAddLocation(NPC, -108.95, -0.1, -182.72, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -108.95, -0.1, -182.72, 2, 0)
	MovementLoopAddLocation(NPC, -108.05, -0.11, -184.26, 2, 0)
	MovementLoopAddLocation(NPC, -109.78, -0.03, -184.75, 2, 0)
	MovementLoopAddLocation(NPC, -110.07, -0.03, -183.56, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -110.07, -0.03, -183.56, 2, 0)
	MovementLoopAddLocation(NPC, -108.89, -0.11, -183.21, 2, 0)
	MovementLoopAddLocation(NPC, -108.3, -0.1, -180.73, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -108.3, -0.1, -180.73, 2, 0)
	MovementLoopAddLocation(NPC, -109.1, -0.07, -180.85, 2, 0)
	MovementLoopAddLocation(NPC, -108.6, -0.06, -184.55, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -108.6, -0.06, -184.55, 2, 0)
	MovementLoopAddLocation(NPC, -110.05, -0.02, -184.61, 2, 0)
	MovementLoopAddLocation(NPC, -111.34, -0.01, -183.76, 2, 3)
end

