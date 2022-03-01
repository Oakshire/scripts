--[[
	Script Name		:	a_duck.lua
	Script Purpose	:	Waypoint Path for a_duck.lua
	Script Author	:	Devn00b
	Script Date		:	08/04/2020 04:00:53 PM
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
	MovementLoopAddLocation(NPC, 771.36, -19.04, -331.37, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 784.76, -21.85, -347.87, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 767.68, -21.55, -339.19, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 767.81, -18.93, -330.36, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 757.67, -21, -335.59, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 740.57, -20.88, -335.73, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 731.81, -19.03, -333.06, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 711.2, -17.06, -330.96, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 703.56, -17.03, -335.11, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 694.61, -17.46, -337.01, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 691.01, -17.7, -326.34, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 677.22, -22.34, -314.58, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 767.92, -22.04, -340.69, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 785.11, -19.45, -334.67, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 776.41, -17.82, -317.85, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 761.2, -19.05, -329.52, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 784.63, -22, -348.12, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 753.38, -16.7, -312.5, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 761.89, -17.47, -307.3, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 755.49, -20.78, -334.76, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 761.89, -17.47, -307.3, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 753.38, -16.7, -312.5, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 784.63, -22, -348.12, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 761.2, -19.05, -329.52, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 776.41, -17.82, -317.85, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 785.11, -19.45, -334.67, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 767.92, -22.04, -340.69, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 677.22, -22.34, -314.58, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 691.01, -17.7, -326.34, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 694.61, -17.46, -337.01, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 703.56, -17.03, -335.11, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 711.2, -17.06, -330.96, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 731.81, -19.03, -333.06, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 740.57, -20.88, -335.73, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 757.67, -21, -335.59, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 767.81, -18.93, -330.36, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 767.68, -21.55, -339.19, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 784.76, -21.85, -347.87, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 771.36, -19.04, -331.37, 2, math.random(0,3))
end


