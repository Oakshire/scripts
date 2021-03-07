--[[
	Script Name		:	grave_scorpius3.lua
	Script Purpose	:	Waypoint Path for grave_scorpius3.lua
	Script Author	:	Devn00b
	Script Date		:	06/26/2020 03:01:16 PM
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
	MovementLoopAddLocation(NPC, 157.09, -6.34, -108.9, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 181.21, -7.14, -110.06, 2, 0)
	MovementLoopAddLocation(NPC, 190.37, -6.93, -115.36, 2, 0)
	MovementLoopAddLocation(NPC, 201.28, -6.44, -123.62, 2, 0)
	MovementLoopAddLocation(NPC, 220.95, -6.82, -107.27, 2, 0)
	MovementLoopAddLocation(NPC, 222.45, -6.82, -81.02, 2, 0)
	MovementLoopAddLocation(NPC, 217.24, -6.81, -79.61, 2, 0)
	MovementLoopAddLocation(NPC, 210.73, -6.96, -80.88, 2, 0)
	MovementLoopAddLocation(NPC, 208.53, -6.93, -90.89, 2, 0)
	MovementLoopAddLocation(NPC, 191.84, -6.53, -91.63, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 208.53, -6.93, -90.89, 2, 0)
	MovementLoopAddLocation(NPC, 210.73, -6.96, -80.88, 2, 0)
	MovementLoopAddLocation(NPC, 217.24, -6.81, -79.61, 2, 0)
	MovementLoopAddLocation(NPC, 222.45, -6.82, -81.02, 2, 0)
	MovementLoopAddLocation(NPC, 220.95, -6.82, -107.27, 2, 0)
	MovementLoopAddLocation(NPC, 201.28, -6.44, -123.62, 2, 0)
	MovementLoopAddLocation(NPC, 190.37, -6.93, -115.36, 2, 0)
	MovementLoopAddLocation(NPC, 181.21, -7.14, -110.06, 2, 0)
	MovementLoopAddLocation(NPC, 157.09, -6.34, -108.9, 2, math.random(0,10))
end


