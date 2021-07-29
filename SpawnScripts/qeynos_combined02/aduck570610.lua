--[[
    Script Name     :   SpawnScripts/qeynos_combined02/aduck570610.lua
	Script Purpose	:	Waypoint Path for aduck570610.lua
	Script Author	:	Rylec
	Script Date		:	07-28-2021 06:39:33 
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
	MovementLoopAddLocation(NPC, 769.6, -20.79, -336.95, 2, math.random(90, 135))
	MovementLoopAddLocation(NPC, 771.94, -19.19, -332.12, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 747.98, -20.76, -333.7, 2, 0)
	MovementLoopAddLocation(NPC, 728.89, -17.95, -330.09, 2, 0)
	MovementLoopAddLocation(NPC, 718.94, -17.07, -329.78, 2, 0)
	MovementLoopAddLocation(NPC, 706.11, -17.06, -336.9, 2, math.random(15, 35))
	MovementLoopAddLocation(NPC, 717.12, -17.06, -329.3, 2, 0)
	MovementLoopAddLocation(NPC, 720.95, -17.1, -327.92, 2, 0)
	MovementLoopAddLocation(NPC, 735.5, -18.28, -327.94, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 739.61, -18.9, -329.26, 2, 0)
	MovementLoopAddLocation(NPC, 744.41, -18.74, -328.22, 2, 0)
	MovementLoopAddLocation(NPC, 749.05, -17.79, -323.5, 2, 0)
	MovementLoopAddLocation(NPC, 758.15, -17.25, -319.38, 2, math.random(90, 135))
	MovementLoopAddLocation(NPC, 749.22, -16.38, -309.47, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 745, -16.44, -310.43, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 747.26, -16.43, -310.56, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 758, -16.91, -310.38, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 755.15, -16.58, -307.4, 2, math.random(15, 35))
	MovementLoopAddLocation(NPC, 739.14, -16.64, -311.28, 2, math.random(90, 135))
	MovementLoopAddLocation(NPC, 751.24, -16.79, -316.36, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 735.83, -17.64, -324.22, 2, 0)
	MovementLoopAddLocation(NPC, 718.97, -17.06, -328.86, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 715.57, -17.04, -332.97, 2, 0)
	MovementLoopAddLocation(NPC, 712.8, -17.33, -339.04, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 708.85, -17.1, -337.1, 2, math.random(90, 135))
	MovementLoopAddLocation(NPC, 707.84, -17.12, -338.97, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 710.84, -17.2, -337.03, 2, math.random(15, 25))
	MovementLoopAddLocation(NPC, 703.91, -17.03, -335.06, 2, 4)
	MovementLoopAddLocation(NPC, 718, -17.07, -328.71, 2, 0)
	MovementLoopAddLocation(NPC, 722, -17.24, -328.93, 2, 0)
	MovementLoopAddLocation(NPC, 728.73, -18.34, -332.12, 2, 4)
	MovementLoopAddLocation(NPC, 737.75, -16.81, -312.56, 2, 4)
	MovementLoopAddLocation(NPC, 773.75, -18.44, -327.17, 2, 4)
	MovementLoopAddLocation(NPC, 756.2, -19.47, -330.24, 2, 0)
	MovementLoopAddLocation(NPC, 753.15, -19.91, -331.17, 2, 0)
	MovementLoopAddLocation(NPC, 745.35, -20.24, -332.43, 2, 4)
	MovementLoopAddLocation(NPC, 732.11, -17.8, -326.47, 2, 4)
	MovementLoopAddLocation(NPC, 746.09, -16.72, -316.4, 2, 4)
	MovementLoopAddLocation(NPC, 763.18, -18.43, -326.14, 2, 0)
	MovementLoopAddLocation(NPC, 766.04, -18.84, -329.6, 2, 0)
end
