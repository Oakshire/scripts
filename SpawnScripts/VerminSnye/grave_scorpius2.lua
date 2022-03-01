--[[
	Script Name		:	grave_scorpius2.lua
	Script Purpose	:	Waypoint Path for grave_scorpius2.lua
	Script Author	:	Devn00b
	Script Date		:	06/24/2020 02:58:46 PM
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
	MovementLoopAddLocation(NPC, 119.31, 0.02, -118.19, 2, 0)
	MovementLoopAddLocation(NPC, 124.43, 0.1, -128.55, 2, 0)
	MovementLoopAddLocation(NPC, 131.37, -0.09, -138.61, 2, 0)
	MovementLoopAddLocation(NPC, 129.86, 0.49, -155.9, 2, 0)
	MovementLoopAddLocation(NPC, 129.33, -0.01, -162.91, 2, 0)
	MovementLoopAddLocation(NPC, 128.54, -0.01, -165.56, 2, 0)
	MovementLoopAddLocation(NPC, 118.72, 0.64, -167.32, 2, 0)
	MovementLoopAddLocation(NPC, 106.4, -0.06, -173.35, 2, 0)
	MovementLoopAddLocation(NPC, 118.72, 0.64, -167.32, 2, 0)
	MovementLoopAddLocation(NPC, 128.54, -0.01, -165.56, 2, 0)
	MovementLoopAddLocation(NPC, 129.33, -0.01, -162.91, 2, 0)
	MovementLoopAddLocation(NPC, 129.86, 0.49, -155.9, 2, 0)
	MovementLoopAddLocation(NPC, 131.37, -0.09, -138.61, 2, 0)
	MovementLoopAddLocation(NPC, 124.43, 0.1, -128.55, 2, 0)
	MovementLoopAddLocation(NPC, 119.31, 0.02, -118.19, 2, 0)
end


