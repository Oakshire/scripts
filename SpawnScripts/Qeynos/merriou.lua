--[[
	Script Name		:	merriou.lua
	Script Purpose	:	Waypoint Path for merriou.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 06:01:50 PM
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
	MovementLoopAddLocation(NPC, 678.69, -19.63, 101.23, 2, 0)
	MovementLoopAddLocation(NPC, 668.32, -21.03, 102.1, 2, 0)
	MovementLoopAddLocation(NPC, 671.73, -21.21, 136.74, 2, 0)
	MovementLoopAddLocation(NPC, 683.14, -20.65, 157.84, 2, 0)
	MovementLoopAddLocation(NPC, 718.83, -19.46, 181.31, 2, 0)
	MovementLoopAddLocation(NPC, 725.44, -19.96, 187.48, 2, 0)
	MovementLoopAddLocation(NPC, 774.53, -21.03, 177.54, 2, 0)
	MovementLoopAddLocation(NPC, 716.6, -19.52, 195.64, 2, 0)
	MovementLoopAddLocation(NPC, 707.24, -19.53, 194.07, 2, 0)
	MovementLoopAddLocation(NPC, 692.01, -19.52, 198.72, 2, 0)
	MovementLoopAddLocation(NPC, 691.55, -19.52, 199.22, 2, 0)
	MovementLoopAddLocation(NPC, 679.65, -19.76, 221.96, 2, 0)
	MovementLoopAddLocation(NPC, 621.24, -18.53, 235.62, 2, 0)
	MovementLoopAddLocation(NPC, 569.7, -17.78, 245.98, 2, 0)
	MovementLoopAddLocation(NPC, 468.6, -21.37, 241.47, 2, 0)
	MovementLoopAddLocation(NPC, 462.58, -22.18, 236.94, 2, 0)
	MovementLoopAddLocation(NPC, 450.92, -19.23, 195.43, 2, 0)
	MovementLoopAddLocation(NPC, 462.58, -22.18, 236.94, 2, 0)
	MovementLoopAddLocation(NPC, 468.6, -21.37, 241.47, 2, 0)
	MovementLoopAddLocation(NPC, 569.7, -17.78, 245.98, 2, 0)
	MovementLoopAddLocation(NPC, 621.24, -18.53, 235.62, 2, 0)
	MovementLoopAddLocation(NPC, 679.65, -19.76, 221.96, 2, 0)
	MovementLoopAddLocation(NPC, 691.55, -19.52, 199.22, 2, 0)
	MovementLoopAddLocation(NPC, 692.01, -19.52, 198.72, 2, 0)
	MovementLoopAddLocation(NPC, 707.24, -19.53, 194.07, 2, 0)
	MovementLoopAddLocation(NPC, 716.6, -19.52, 195.64, 2, 0)
	MovementLoopAddLocation(NPC, 774.53, -21.03, 177.54, 2, 0)
	MovementLoopAddLocation(NPC, 725.44, -19.96, 187.48, 2, 0)
	MovementLoopAddLocation(NPC, 718.83, -19.46, 181.31, 2, 0)
	MovementLoopAddLocation(NPC, 683.14, -20.65, 157.84, 2, 0)
	MovementLoopAddLocation(NPC, 671.73, -21.21, 136.74, 2, 0)
	MovementLoopAddLocation(NPC, 668.32, -21.03, 102.1, 2, 0)
	MovementLoopAddLocation(NPC, 678.69, -19.63, 101.23, 2, 0)
end


