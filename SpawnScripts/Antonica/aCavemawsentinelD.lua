--[[
    Script Name    : SpawnScripts/Antonica/aCavemawsentinelD.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.19 07:07:57
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
	MovementLoopAddLocation(NPC, -774.84, -11.04, -196.89, 2, 5)
	MovementLoopAddLocation(NPC, -785.92, -11.48, -195.03, 2, 0)
	MovementLoopAddLocation(NPC, -790.24, -11.78, -193.1, 2, 0)
	MovementLoopAddLocation(NPC, -791.68, -12.56, -186.06, 2, 0)
	MovementLoopAddLocation(NPC, -789.14, -13.69, -172.34, 2, 0)
	MovementLoopAddLocation(NPC, -790.8, -14.03, -161.87, 2, 0)
	MovementLoopAddLocation(NPC, -797.35, -15.04, -150.84, 2, 0)
	MovementLoopAddLocation(NPC, -800.68, -15.93, -146.7, 2, 0)
	MovementLoopAddLocation(NPC, -806.01, -17.71, -140.43, 2, 0)
	MovementLoopAddLocation(NPC, -817.43, -20.06, -136.11, 2, 0)
	MovementLoopAddLocation(NPC, -827.01, -21.84, -122.8, 2, 0)
	MovementLoopAddLocation(NPC, -831.42, -21.74, -118.15, 2, 0)
	MovementLoopAddLocation(NPC, -836.88, -21.39, -108.87, 2, 0)
	MovementLoopAddLocation(NPC, -847.99, -20.65, -98.42, 2, 0)
	MovementLoopAddLocation(NPC, -857.6, -20.67, -91.61, 2, 0)
	MovementLoopAddLocation(NPC, -867.98, -20.96, -84.2, 2, 0)
	MovementLoopAddLocation(NPC, -852.74, -20.46, -92.94, 2, 0)
	MovementLoopAddLocation(NPC, -843.21, -21.25, -104.91, 2, 0)
	MovementLoopAddLocation(NPC, -835.05, -21.51, -111.99, 2, 0)
	MovementLoopAddLocation(NPC, -829.15, -21.92, -121.23, 2, 0)
	MovementLoopAddLocation(NPC, -824.7, -21.12, -131.31, 2, 0)
	MovementLoopAddLocation(NPC, -810.91, -18.74, -138.66, 2, 0)
	MovementLoopAddLocation(NPC, -803.04, -16.8, -143.17, 2, 0)
	MovementLoopAddLocation(NPC, -798.9, -15.41, -149.09, 2, 0)
	MovementLoopAddLocation(NPC, -794.13, -14, -156.25, 2, 0)
	MovementLoopAddLocation(NPC, -790.47, -14.24, -164.17, 2, 0)
	MovementLoopAddLocation(NPC, -789.67, -13.55, -174.18, 2, 0)
	MovementLoopAddLocation(NPC, -792.13, -12.87, -183.4, 2, 0)
	MovementLoopAddLocation(NPC, -791.28, -11.58, -190.59, 2, 0)
	MovementLoopAddLocation(NPC, -785.75, -11.55, -194.46, 2, 0)
	MovementLoopAddLocation(NPC, -778.75, -11.39, -195.08, 2, 0)
	MovementLoopAddLocation(NPC, -774.84, -11.04, -196.89, 2, 0)
end

