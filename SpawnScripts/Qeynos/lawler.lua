--[[
	Script Name		:	lawler.lua
	Script Purpose	:	Waypoint Path for lawler.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 03:26:50 PM
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
	MovementLoopAddLocation(NPC, 382.78, -20.35, 209.21, 2, 30)
	MovementLoopAddLocation(NPC, 416.29, -20.5, 224.76, 2, 0)
	MovementLoopAddLocation(NPC, 422.42, -20.16, 228.13, 2, 0)
	MovementLoopAddLocation(NPC, 433.73, -20.36, 235.98, 2, 0)
	MovementLoopAddLocation(NPC, 499.78, -19.76, 243.88, 2, 0)
	MovementLoopAddLocation(NPC, 553.41, -17.75, 245.22, 2, 0)
	MovementLoopAddLocation(NPC, 555.48, -16.99, 229.04, 2, 0)
	MovementLoopAddLocation(NPC, 556.3, -15.08, 217.76, 2, 0)
	MovementLoopAddLocation(NPC, 556.2, -14.97, 216.25, 2, 0)
	MovementLoopAddLocation(NPC, 556.17, -15.43, 207.6, 2, 0)
	MovementLoopAddLocation(NPC, 498.03, -16.24, 203.57, 2, 0)
	MovementLoopAddLocation(NPC, 476.51, -20.95, 195.22, 2, 0)
	MovementLoopAddLocation(NPC, 442.44, -20.58, 173.74, 2, 0)
	MovementLoopAddLocation(NPC, 429.93, -20.81, 184.5, 2, 0)
	MovementLoopAddLocation(NPC, 420.87, -20.27, 192.41, 2, 0)
	MovementLoopAddLocation(NPC, 390.1, -20.39, 189.13, 2, 0)
	MovementLoopAddLocation(NPC, 380.86, -20.25, 207.69, 2, 0)
	MovementLoopAddLocation(NPC, 390.1, -20.39, 189.13, 2, 0)
	MovementLoopAddLocation(NPC, 420.87, -20.27, 192.41, 2, 0)
	MovementLoopAddLocation(NPC, 429.93, -20.81, 184.5, 2, 0)
	MovementLoopAddLocation(NPC, 442.44, -20.58, 173.74, 2, 0)
	MovementLoopAddLocation(NPC, 476.51, -20.95, 195.22, 2, 0)
	MovementLoopAddLocation(NPC, 498.03, -16.24, 203.57, 2, 0)
	MovementLoopAddLocation(NPC, 556.17, -15.43, 207.6, 2, 0)
	MovementLoopAddLocation(NPC, 556.2, -14.97, 216.25, 2, 0)
	MovementLoopAddLocation(NPC, 556.3, -15.08, 217.76, 2, 0)
	MovementLoopAddLocation(NPC, 555.48, -16.99, 229.04, 2, 0)
	MovementLoopAddLocation(NPC, 553.41, -17.75, 245.22, 2, 0)
	MovementLoopAddLocation(NPC, 499.78, -19.76, 243.88, 2, 0)
	MovementLoopAddLocation(NPC, 433.73, -20.36, 235.98, 2, 0)
	MovementLoopAddLocation(NPC, 422.42, -20.16, 228.13, 2, 0)
	MovementLoopAddLocation(NPC, 416.29, -20.5, 224.76, 2, 0)
	MovementLoopAddLocation(NPC, 382.78, -20.35, 209.21, 2, 0)
end


