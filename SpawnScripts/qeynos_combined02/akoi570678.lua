--[[
    Script Name     :   SpawnScripts/qeynos_combined02/akoi570678.lua
	Script Purpose	:	Waypoint Path for akoi570678.lua
	Script Author	:	Rylec
	Script Date		:	02-21-2021 09:38:45 
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
	MovementLoopAddLocation(NPC, 791.17, -27.03, -374.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 790.14, -26.03, -395.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 790.85, -26.38, -387.32, 2, 0)
	MovementLoopAddLocation(NPC, 791.11, -28, -377.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 788.15, -27.06, -388.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 789.45, -27.14, -390.81, 2, 0)
	MovementLoopAddLocation(NPC, 790.17, -27.03, -394.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 790.17, -27.02, -393.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 789.83, -27.39, -386.04, 2, 0)
	MovementLoopAddLocation(NPC, 789.64, -27.74, -383.7, 2, 0)
	MovementLoopAddLocation(NPC, 789.05, -27.93, -381.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 790.04, -27.69, -385.21, 2, 0)
	MovementLoopAddLocation(NPC, 790.28, -27.22, -389.71, 2, 0)
	MovementLoopAddLocation(NPC, 789.21, -26.99, -396.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 791.27, -27.29, -384.47, 2, 0)
	MovementLoopAddLocation(NPC, 792.16, -27.57, -375.47, 2, 0)
	MovementLoopAddLocation(NPC, 792.1, -27.84, -373.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 788.41, -27.08, -381.83, 2, math.random(10, 20))
end
