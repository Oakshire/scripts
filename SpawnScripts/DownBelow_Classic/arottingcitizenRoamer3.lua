--[[
    Script Name    : SpawnScripts/DownBelow_Classic/arottingcitizenRoamer3.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.15 03:01:00
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
	MovementLoopAddLocation(NPC, -184.93, 0, -10.63, 1, 4)
	MovementLoopAddLocation(NPC, -180.05, 0, -11.51, 1, 0)
	MovementLoopAddLocation(NPC, -176.15, 0, -10.18, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, -176.15, 0, -10.18, 1, 0)
	MovementLoopAddLocation(NPC, -179.41, 0, -11.99, 1, 0)
	MovementLoopAddLocation(NPC, -183.42, 0, -16.42, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, -183.42, 0, -16.42, 1, 0)
	MovementLoopAddLocation(NPC, -184.03, 0, -13.98, 1, 0)
	MovementLoopAddLocation(NPC, -182.27, 0, -9.86, 1, 0)
	MovementLoopAddLocation(NPC, -180.01, 0, -7.23, 1, 0)
	MovementLoopAddLocation(NPC, -180.12, 0, -5.22, 1, 0)
	MovementLoopAddLocation(NPC, -182.56, 0, -2.56, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, -182.56, 0, -2.56, 1, 0)
	MovementLoopAddLocation(NPC, -173.09, 0, -10.29, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, -173.09, 0, -10.29, 1, 0)
	MovementLoopAddLocation(NPC, -176.01, 0, -10.1, 1, 0)
	MovementLoopAddLocation(NPC, -181.74, 0, -13.76, 1, 0)
	MovementLoopAddLocation(NPC, -186.69, 0, -10.65, 1, 0)
	MovementLoopAddLocation(NPC, -189.53, 0, -10.39, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, -189.53, 0, -10.39, 1, 0)
	MovementLoopAddLocation(NPC, -184.93, 0, -10.63, 1, 3)
end

