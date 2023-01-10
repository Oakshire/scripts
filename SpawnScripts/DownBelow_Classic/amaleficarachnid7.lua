--[[
    Script Name    : SpawnScripts/DownBelow_Classic/amaleficarachnid7.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.09 09:01:03
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
	MovementLoopAddLocation(NPC, -91.28, -0.04, -195.95, 2, 4)
	MovementLoopAddLocation(NPC, -91.16, -0.06, -194.83, 2, 0)
	MovementLoopAddLocation(NPC, -86.29, -0.09, -193.28, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -86.29, -0.09, -193.28, 2, 0)
	MovementLoopAddLocation(NPC, -88.89, 0.46, -193.31, 2, 0)
	MovementLoopAddLocation(NPC, -94.42, 0.14, -194.16, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -94.42, 0.14, -194.16, 2, 0)
	MovementLoopAddLocation(NPC, -92.35, -0.09, -192.77, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -92.35, -0.09, -192.77, 2, 0)
	MovementLoopAddLocation(NPC, -88.62, 0.47, -193.62, 2, 0)
	MovementLoopAddLocation(NPC, -85.94, -0.1, -191.82, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -85.94, -0.1, -191.82, 2, 0)
	MovementLoopAddLocation(NPC, -89.98, 0.31, -193.4, 2, 0)
	MovementLoopAddLocation(NPC, -91.28, -0.04, -195.95, 2, 3)
end

