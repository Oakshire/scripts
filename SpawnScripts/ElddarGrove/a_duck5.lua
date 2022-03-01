--[[
	Script Name		:	a_duck5.lua
	Script Purpose	:	Waypoint Path for a_duck5.lua
	Script Author	:	Devn00b
	Script Date		:	08/05/2020 02:47:30 PM
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
	MovementLoopAddLocation(NPC, 701.5, -17.34, -342.63, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 694.08, -17.5, -336.23, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 686.64, -20.32, -310.71, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 676.16, -22.34, -313.25, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 701.12, -17.31, -316.64, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 699.51, -17.11, -328.91, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 715.21, -18.29, -343.54, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 728.64, -19.15, -337.07, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 718.67, -18.22, -342.47, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 705.25, -17.48, -343.04, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 718.67, -18.22, -342.47, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 728.64, -19.15, -337.07, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 715.21, -18.29, -343.54, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 699.51, -17.11, -328.91, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 701.12, -17.31, -316.64, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 676.16, -22.34, -313.25, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 686.64, -20.32, -310.71, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 694.08, -17.5, -336.23, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 701.5, -17.34, -342.63, 2, math.random(0,25))
end


