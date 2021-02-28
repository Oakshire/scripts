--[[
    Script Name     :   SpawnScripts/qeynos_combined02/adragonfly570738.lua
	Script Purpose	:	Waypoint Path for adragonfly570738.lua
	Script Author	:	Rylec
	Script Date		:	02-22-2021 07:18:47 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 724.44, -17, -440.65, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 716.71, -21, -436.21, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 717.52, -21.7, -433.54, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 716.75, -21.2, -437.54, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 712.88, -21.3, -430.4, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 711.99, -22.2, -436.62, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 715.98, -20.8, -439.4, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 718.61, -18.6, -440.4, 7, 0)
	MovementLoopAddLocation(NPC, 721.28, -17.8, -440.62, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 717.35, -17, -443.55, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 718.87, -21, -436.86, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 725.07, -16.8, -440.13, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 716.41, -21.3, -436.01, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 717.65, -21.7, -433.52, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 716.75, -22, -437.32, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 712.88, -22.2, -429.81, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 712.06, -22, -436.35, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 716.27, -20, -439.5, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 721.09, -18.3, -439.89, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 717.31, -18, -443.37, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 719.29, -20.4, -436.97, 7, math.random(5, 8))
end