--[[
    Script Name     :   SpawnScripts/qeynos_combined02/Elddarkestrel570555.lua
	Script Purpose	:	Waypoint Path for Elddarkestrel570555.lua
	Script Author	:	Rylec
	Script Date		:	07-27-2021 12:51:53 
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
 	MovementLoopAddLocation(NPC, 766.81, -18.02, -333.77, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 772.98, -16.05, -331.04, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 768.68, -15.52, -343.18, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 772.94, -16.32, -339.73, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 771.73, -17.1, -334.51, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 780.78, -14.03, -335.12, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 774.9, -14.52, -333.71, 2, 0)
	MovementLoopAddLocation(NPC, 767.56, -14.78, -333.18, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 772.08, -16.06, -335.14, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 774.82, -15.56, -327.61, 2, 0)
	MovementLoopAddLocation(NPC, 778.46, -15.02, -322.55, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 774.72, -15.53, -327.45, 2, 0)
	MovementLoopAddLocation(NPC, 772.27, -16.11, -335.32, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 770.19, -17.72, -342.94, 2, math.random(10, 17))
end