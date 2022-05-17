--[[
	Script Name		:	lawler.lua
	Script Purpose	:	Waypoint Path for lawler.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 03:26:50 PM
	Script Notes	:	Locations collected from Live
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		GenericGuardHail(NPC, Spawn)
end

function respawn(NPC)
		spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 390.31, -20.28, 212.44, 2, 7)
	MovementLoopAddLocation(NPC, 416.32, -20.49, 225.26, 2, 0)
	MovementLoopAddLocation(NPC, 434.91, -20.44, 237.62, 2, 0)
	MovementLoopAddLocation(NPC, 476.86, -20.77, 242.05, 2, 0)
	MovementLoopAddLocation(NPC, 511.68, -19.18, 245.67, 2, 0)
	MovementLoopAddLocation(NPC, 551.78, -17.71, 246.63, 2, 0)
	MovementLoopAddLocation(NPC, 555.72, -17.09, 232.97, 2, 0)
	MovementLoopAddLocation(NPC, 556.39, -15.01, 215.45, 2, 0)
	MovementLoopAddLocation(NPC, 554.38, -15.13, 213.99, 2, 0)
	MovementLoopAddLocation(NPC, 522.54, -15.17, 211.74, 2, 0)
	MovementLoopAddLocation(NPC, 475.37, -21.03, 197.27, 2, 0)
	MovementLoopAddLocation(NPC, 461.4, -21.08, 209.32, 2, 0)
	MovementLoopAddLocation(NPC, 448.76, -21.59, 234.24, 2, 0)
	MovementLoopAddLocation(NPC, 441.29, -20.97, 239.13, 2, 0)
	MovementLoopAddLocation(NPC, 416.22, -20.49, 225.52, 2, 0)
	MovementLoopAddLocation(NPC, 380.53, -20.24, 207.18, 2, 3)
end



--[[
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
]]--

