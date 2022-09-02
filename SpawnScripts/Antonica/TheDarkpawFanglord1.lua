--[[
    Script Name    : SpawnScripts/Antonica/TheDarkpawFanglord1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.01 06:09:24
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
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -1641.96, -5.33, 713.14, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1636.26, -0.85, 664.55, 2, 0)
	MovementLoopAddLocation(NPC, -1642.39, -0.99, 656.61, 2, 0)
	MovementLoopAddLocation(NPC, -1641.38, -1.05, 646.37, 2, 0)
	MovementLoopAddLocation(NPC, -1634.81, -0.69, 644.21, 2, 5)
	MovementLoopAddLocation(NPC, -1646.16, -1.23, 651.95, 2, 0)
	MovementLoopAddLocation(NPC, -1641.33, -0.89, 660.46, 2, 0)
	MovementLoopAddLocation(NPC, -1632.71, -0.62, 666.84, 2, 0)
	MovementLoopAddLocation(NPC, -1626.08, -0.03, 664.88, 2, 0)
	MovementLoopAddLocation(NPC, -1622.23, 0.27, 665.69, 2, 0)
	MovementLoopAddLocation(NPC, -1622.04, 0.28, 665.84, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1602.05, -1.81, 697.47, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1608.43, 1.56, 665.95, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1601.17, 0.88, 677.22, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1614.18, -3.65, 710.63, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1627.84, -7.39, 731.78, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1643.32, -7.34, 723.83, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1627.86, -8.96, 738.42, 2, math.random(5,10))
		
end

