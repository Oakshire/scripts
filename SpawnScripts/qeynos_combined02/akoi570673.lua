--[[
    Script Name     :   SpawnScripts/qeynos_combined02/akoi570673.lua
	Script Purpose	:	Waypoint Path for akoi570673.lua
	Script Author	:	Rylec
	Script Date		:	02-21-2021 09:38:34 
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
	MovementLoopAddLocation(NPC, 761.97, -25.92, -396.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.97, -26.26, -393.24, 2, 0)
	MovementLoopAddLocation(NPC, 762.83, -26.99, -386.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.93, -26.98, -386.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.52, -26.5, -391.83, 2, 0)
	MovementLoopAddLocation(NPC, 761.5, -26.43, -402.44, 2, 0)
	MovementLoopAddLocation(NPC, 760.33, -26.74, -410.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.75, -26.97, -403.27, 2, 0)
	MovementLoopAddLocation(NPC, 761.93, -26.99, -382.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 759.75, -27.03, -380.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 763.83, -27, -392.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 762.31, -26.74, -412.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.49, -26.47, -391.92, 2, 0)
	MovementLoopAddLocation(NPC, 760.01, -26.97, -383.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 761.01, -26.87, -386.82, 2, 0)
end
