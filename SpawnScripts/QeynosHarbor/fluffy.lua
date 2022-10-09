--[[
	Script Name		:	fluffy.lua
	Script Purpose	:	Waypoint Path for fluffy.lua
	Script Author	:	Devn00b
	Script Date		:	04/09/2020 04:38:15 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
--	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
	end
--[[
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 809.06, -23.31, 118.9, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 814.98, -23.31, 81.14, 1, 0)
	MovementLoopAddLocation(NPC, 832.46, -23.35, 41.37, 1, 0)
	MovementLoopAddLocation(NPC, 857.7, -25.4, 38.3, 1, 0)
	MovementLoopAddLocation(NPC, 859.84, -25.51, 34.46, 1, 0)
	MovementLoopAddLocation(NPC, 885.67, -25.49, 37.78, 1, 0)
	MovementLoopAddLocation(NPC, 917.64, -25.49, 20.58, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 913.24, -25.51, 19, 1, 0)
	MovementLoopAddLocation(NPC, 890.98, -25.51, 57.99, 1, 0)
	MovementLoopAddLocation(NPC, 864.42, -25.5, 111.85, 1, 0)
	MovementLoopAddLocation(NPC, 904.37, -25.37, 16.43, 1, 0)
	MovementLoopAddLocation(NPC, 902.4, -25.37, -17.72, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 891.84, -25.46, -22.72, 1, 0)
	MovementLoopAddLocation(NPC, 896.53, -25.45, -23.46, 1, 0)
	MovementLoopAddLocation(NPC, 888.31, -25.4, -50.94, 1, 0)
	MovementLoopAddLocation(NPC, 870.99, -25.36, -61.85, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 849.85, -25.36, -64.25, 1, 0)
	MovementLoopAddLocation(NPC, 727.6, -21.38, -54.82, 1, 0)
	MovementLoopAddLocation(NPC, 706.41, -21.09, -80.29, 1, 0)
	MovementLoopAddLocation(NPC, 727.6, -21.38, -54.82, 1, 0)
	MovementLoopAddLocation(NPC, 849.85, -25.36, -64.25, 1, 0)
	MovementLoopAddLocation(NPC, 870.99, -25.36, -61.85, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 888.31, -25.4, -50.94, 1, 0)
	MovementLoopAddLocation(NPC, 896.53, -25.45, -23.46, 1, 0)
	MovementLoopAddLocation(NPC, 891.84, -25.46, -22.72, 1, 0)
	MovementLoopAddLocation(NPC, 902.4, -25.37, -17.72, 1, 0)
	MovementLoopAddLocation(NPC, 904.37, -25.37, 16.43, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 864.42, -25.5, 111.85, 1, 0)
	MovementLoopAddLocation(NPC, 890.98, -25.51, 57.99, 1, 0)
	MovementLoopAddLocation(NPC, 913.24, -25.51, 19, 1, 0)
	MovementLoopAddLocation(NPC, 917.64, -25.49, 20.58, 1, 0)
	MovementLoopAddLocation(NPC, 885.67, -25.49, 37.78, 1, math.random(6,20))
	MovementLoopAddLocation(NPC, 859.84, -25.51, 34.46, 1, 0)
	MovementLoopAddLocation(NPC, 857.7, -25.4, 38.3, 1, 0)
	MovementLoopAddLocation(NPC, 832.46, -23.35, 41.37, 1, 0)
	MovementLoopAddLocation(NPC, 814.98, -23.31, 81.14, 1, 0)
	MovementLoopAddLocation(NPC, 809.06, -23.31, 118.9, 1, math.random(6,20))
end
]]--

