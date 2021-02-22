--[[
    Script Name     :   SpawnScripts/qeynos_combined02/adragonfly570733.lua
	Script Purpose	:	Waypoint Path for adragonfly570733.lua
	Script Author	:	Rylec
	Script Date		:	02-21-2021 03:08:42 
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
	MovementLoopAddLocation(NPC, 774.09, -21.5, -423.96, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 774.46, -18.05, -414.39, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 769.02, -22.5, -421.43, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 782.7, -17, -427.51, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 769.49, -14, -417.93, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 780.72, -20, -418.8, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 776, -22, -420.29, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 774.92, -22.5, -424.5, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 771.98, -21, -428, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 772.04, -20.5, -425.21, 7, 0)
	MovementLoopAddLocation(NPC, 776.78, -14, -414.16, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 776.16, -20.5, -421.74, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 773.6, -22, -423.94, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 778.19, -14.6, -416.2, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 772.21, -19, -424.92, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 773.9, -21, -423.84, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 775.73, -16, -414.13, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 768.89, -21, -420.38, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 781.62, -17.2, -426.44, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 767.33, -13, -417.76, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 781.06, -22, -419.11, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 776.16, -21.1, -420.79, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 774.79, -20.3, -424.14, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 772.13, -19.2, -427.23, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 777.62, -18.1, -414.29, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 775.91, -21, -421.44, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 777.58, -22.2, -421.9, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 773.6, -21.7, -423.65, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 779.03, -15, -415.23, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 774.88, -19, -426.5, 7, math.random(5, 8))
end