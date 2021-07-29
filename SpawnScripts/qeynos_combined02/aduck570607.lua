--[[
    Script Name     :   SpawnScripts/qeynos_combined02/aduck570607.lua
	Script Purpose	:	Waypoint Path for aduck570607
	Script Author	:	Rylec
	Script Date		:	07-28-2021 06:39:27 
	Script Notes	:	Locations collected from Live
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
	MovementLoopAddLocation(NPC, 750.23, -16.2, -304.08, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 748.21, -16.37, -309.13, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 743.18, -16.4, -309.34, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 755.15, -16.82, -313.38, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 765.97, -18.12, -324.05, 2, math.random(90, 135))
	MovementLoopAddLocation(NPC, 760.02, -18.78, -328.16, 2, 0)
	MovementLoopAddLocation(NPC, 755.96, -20.05, -332.13, 2, 0)
	MovementLoopAddLocation(NPC, 754.62, -20.67, -334.14, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 727.87, -18.03, -331.31, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 728.36, -17.63, -327.78, 2, 0)
	MovementLoopAddLocation(NPC, 735.96, -17, -317.18, 2, 0)
	MovementLoopAddLocation(NPC, 739, -16.72, -312.43, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 744.24, -16.51, -311.95, 2, 0)
	MovementLoopAddLocation(NPC, 746.14, -16.52, -312.38, 2, math.random(90, 135))
	MovementLoopAddLocation(NPC, 739.96, -16.96, -317.53, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 752.1, -16.82, -316.34, 2, math.random(15, 35))
	MovementLoopAddLocation(NPC, 747.05, -16.38, -309.3, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 755.9, -17.11, -319.12, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 751.82, -16.59, -311.75, 2, 0)
	MovementLoopAddLocation(NPC, 742.16, -16.21, -300.46, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 733.01, -17.75, -325.98, 2, math.random(90, 135))
	MovementLoopAddLocation(NPC, 720.2, -17.08, -328.13, 2, 0)
	MovementLoopAddLocation(NPC, 706.76, -17.06, -336.02, 2, math.random(15, 35))
	MovementLoopAddLocation(NPC, 708.91, -17.1, -337.05, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 710.89, -17.14, -335.98, 2, math.random(15, 35))
	MovementLoopAddLocation(NPC, 711.97, -17.14, -336.02, 2, math.random(15, 35))
	MovementLoopAddLocation(NPC, 717.54, -17.07, -329.17, 2, math.random(90, 135))
	MovementLoopAddLocation(NPC, 749.13, -20.67, -333.4, 2, math.random(15, 35))
	MovementLoopAddLocation(NPC, 760.31, -18.74, -328.03, 2, 0)
	MovementLoopAddLocation(NPC, 766.8, -18.26, -326.07, 2, math.random(15, 35))
	MovementLoopAddLocation(NPC, 778.63, -21.59, -342.15, 2, 4)
	MovementLoopAddLocation(NPC, 774.21, -19.28, -332.11, 2, 4)
	MovementLoopAddLocation(NPC, 748.96, -16.61, -314.37, 2, 4)
	MovementLoopAddLocation(NPC, 730.67, -17.68, -326.52, 2, 4)
	MovementLoopAddLocation(NPC, 739.88, -19.69, -331.77, 2, 0)
	MovementLoopAddLocation(NPC, 751.54, -20.84, -334.45, 2, 4)
	MovementLoopAddLocation(NPC, 759.92, -19.22, -329.92, 2, 0)
	MovementLoopAddLocation(NPC, 762.96, -18.56, -327.27, 2, 4)
	MovementLoopAddLocation(NPC, 757.1, -16.77, -309.58, 2, 4)
	MovementLoopAddLocation(NPC, 752.94, -16.46, -307.05, 2, 0)
end