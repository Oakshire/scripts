--[[
    Script Name     :   SpawnScripts/qeynos_combined02/adragonfly570735.lua
	Script Purpose	:	Waypoint Path for adragonfly570735.lua
	Script Author	:	Rylec
	Script Date		:	02-22-2021 05:50:11 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 721.07, -17, -419.98, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 728.15, -18, -418.15, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 729, -16.6, -412.46, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 727.87, -18, -416.46, 7, 0)
	MovementLoopAddLocation(NPC, 725.54, -21, -420.8, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 727.81, -14, -430.15, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 727.99, -15.6, -417.65, 7, 0)
	MovementLoopAddLocation(NPC, 728.89, -18, -412.91, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 728.26, -20.6, -420.05, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 726.7, -20.1, -419.74, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 722.97, -16.4, -417.35, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 725.02, -15.8, -412.93, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 727.25, -19, -420.15, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 727.87, -20.1, -422.17, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 719.89, -16, -414.83, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 736.2, -13.5, -424.31, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 721.6, -15.5, -420.19, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 725.05, -19, -423.43, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 729.94, -20.24, -417.97, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 729.47, -17.6, -412.25, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 725.46, -18.9, -420.89, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 728, -14.5, -429.78, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 728.83, -16.2, -413.01, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 728.58, -20, -420.07, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 726.93, -20.1, -420.04, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 722.71, -16.6, -417.1, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 725.1, -15.7, -412.42, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 727.11, -20.3, -420.71, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 727.53, -21, -422.2, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 737.15, -20, -424.41, 7, math.random(5, 8))
end
