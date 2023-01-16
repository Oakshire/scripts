--[[
    Script Name    : SpawnScripts/DownBelow_Classic/arottingcitizenRoam1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.15 03:01:27
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
	MovementLoopAddLocation(NPC, -192.93, 0, -25.18, 2, 4)
	MovementLoopAddLocation(NPC, -191.02, 0, -22.96, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -191.02, 0, -22.96, 2, 0)
	MovementLoopAddLocation(NPC, -193.64, 0, -24.78, 2, 0)
	MovementLoopAddLocation(NPC, -196.75, 0, -24.26, 2, 0)
	MovementLoopAddLocation(NPC, -200.15, 0, -25.81, 2, 0)
	MovementLoopAddLocation(NPC, -202.3, 0, -27.57, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -202.3, 0, -27.57, 2, 0)
	MovementLoopAddLocation(NPC, -199.13, 0, -26.66, 2, 0)
	MovementLoopAddLocation(NPC, -193.83, 0, -27.97, 2, 0)
	MovementLoopAddLocation(NPC, -189.66, 0, -31.54, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -189.66, 0, -31.54, 2, 0)
	MovementLoopAddLocation(NPC, -193.03, 0, -28.42, 2, 0)
	MovementLoopAddLocation(NPC, -195.14, 0, -23.76, 2, 0)
	MovementLoopAddLocation(NPC, -197.56, 0, -20.61, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -197.56, 0, -20.61, 2, 0)
	MovementLoopAddLocation(NPC, -196.91, 0, -24.27, 2, 0)
	MovementLoopAddLocation(NPC, -197.85, 0, -26.92, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -197.85, 0, -26.92, 2, 0)
	MovementLoopAddLocation(NPC, -196.39, 0, -24.45, 2, 0)
	MovementLoopAddLocation(NPC, -193.25, 0, -22.46, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -193.25, 0, -22.46, 2, 0)
	MovementLoopAddLocation(NPC, -192.93, 0, -25.18, 2, 3)
end

