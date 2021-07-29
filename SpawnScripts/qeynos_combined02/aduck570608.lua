--[[
    Script Name     :   SpawnScripts/qeynos_combined02/aduck570608.lua
	Script Purpose	:	Waypoint Path for aduck570608.lua
	Script Author	:	Rylec
	Script Date		:	07-28-2021 06:39:30 
	Script Notes	:	Locations collected from Live
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
	MovementLoopAddLocation(NPC, 759.15, -17.32, -316.36, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 744.05, -16.64, -314.38, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 757.97, -17.36, -320.33, 2, math.random(15, 35))
	MovementLoopAddLocation(NPC, 746.21, -17.31, -321.39, 2, math.random(90, 135))
	MovementLoopAddLocation(NPC, 742.16, -16.22, -304.51, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 743.89, -16.52, -312.13, 2, 0)
	MovementLoopAddLocation(NPC, 744.08, -16.76, -316.23, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 746.99, -16.82, -318.26, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 746.13, -16.35, -308.42, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 736.06, -17, -314.96, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 748, -16.42, -310.4, 2, math.random(90, 135))
	MovementLoopAddLocation(NPC, 741.96, -17.18, -320, 2, 0)
	MovementLoopAddLocation(NPC, 735.4, -17.93, -326.23, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 718.8, -17.06, -329, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 709.81, -17.24, -340.11, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 710.77, -17.34, -341.05, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 707.81, -17.1, -338.05, 2, math.random(15, 35))
	MovementLoopAddLocation(NPC, 706.8, -17.07, -337.08, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 717.48, -17.07, -329.09, 2, 0)
	MovementLoopAddLocation(NPC, 720.53, -17.09, -328.02, 2, 0)
	MovementLoopAddLocation(NPC, 735.56, -17.93, -326.14, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 739.08, -18.7, -328.87, 2, 0)
	MovementLoopAddLocation(NPC, 746.64, -19.79, -331.01, 2, 0)
	MovementLoopAddLocation(NPC, 754.23, -20.21, -332.4, 2, math.random(90, 135))
	MovementLoopAddLocation(NPC, 771.19, -18.3, -327.03, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 752.35, -16.87, -317.29, 2, 0)
	MovementLoopAddLocation(NPC, 744.8, -16.5, -311.83, 2, math.random(15, 25))
end