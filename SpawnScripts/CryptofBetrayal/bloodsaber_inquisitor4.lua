--[[
	Script Name		:	bloodsaber_inquisitor4.lua
	Script Purpose	:	Waypoint Path for bloodsaber_inquisitor4.lua
	Script Author	:	Devn00b
	Script Date		:	06/11/2020 04:33:39 PM
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
	MovementLoopAddLocation(NPC, -32.55, -0.48, -174.09, 2, 0)
	MovementLoopAddLocation(NPC, -40.33, -0.8, -174.96, 2, 0)
	MovementLoopAddLocation(NPC, -40.93, -0.18, -168.31, 2, 0)
	MovementLoopAddLocation(NPC, -37.53, -0.18, -172.24, 2, 0)
	MovementLoopAddLocation(NPC, -35.71, -0.18, -165.33, 2, 0)
	MovementLoopAddLocation(NPC, -29.5, 0.04, -166.08, 2, 0)
	MovementLoopAddLocation(NPC, -28.82, -0.8, -187.21, 2, 0)
	MovementLoopAddLocation(NPC, -17.04, -0.18, -188.03, 2, 0)
	MovementLoopAddLocation(NPC, -19.05, -0.18, -187.03, 2, 0)
	MovementLoopAddLocation(NPC, -25.54, 1.16, -171.52, 2, 0)
	MovementLoopAddLocation(NPC, -33.21, -0.18, -171.69, 2, 0)
	MovementLoopAddLocation(NPC, -28.57, -0.8, -178.8, 2, 0)
	MovementLoopAddLocation(NPC, -35.98, -0.18, -165.08, 2, 0)
	MovementLoopAddLocation(NPC, -40.97, -0.18, -171.54, 2, 0)
	MovementLoopAddLocation(NPC, -35.98, -0.18, -165.08, 2, 0)
	MovementLoopAddLocation(NPC, -28.57, -0.8, -178.8, 2, 0)
	MovementLoopAddLocation(NPC, -33.21, -0.18, -171.69, 2, 0)
	MovementLoopAddLocation(NPC, -25.54, 1.16, -171.52, 2, 0)
	MovementLoopAddLocation(NPC, -19.05, -0.18, -187.03, 2, 0)
	MovementLoopAddLocation(NPC, -17.04, -0.18, -188.03, 2, 0)
	MovementLoopAddLocation(NPC, -28.82, -0.8, -187.21, 2, 0)
	MovementLoopAddLocation(NPC, -29.5, 0.04, -166.08, 2, 0)
	MovementLoopAddLocation(NPC, -35.71, -0.18, -165.33, 2, 0)
	MovementLoopAddLocation(NPC, -37.53, -0.18, -172.24, 2, 0)
	MovementLoopAddLocation(NPC, -40.93, -0.18, -168.31, 2, 0)
	MovementLoopAddLocation(NPC, -40.33, -0.8, -174.96, 2, 0)
	MovementLoopAddLocation(NPC, -32.55, -0.48, -174.09, 2, 0)
end


