--[[
	Script Name		:	festering_zombie8.lua
	Script Purpose	:	Waypoint Path for festering_zombie8.lua
	Script Author	:	Devn00b
	Script Date		:	06/26/2020 05:24:02 PM
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
	MovementLoopAddLocation(NPC, 188.29, -6.97, -94.03, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 186.55, -6.57, -94.3, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 186.18, -7, -88.5, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 188.89, -7.12, -90.37, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 185.76, -6.62, -91.04, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 186.99, -6.93, -88.38, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 187.08, -6.93, -90.75, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 188.61, -7.19, -91.65, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 186.56, -6.74, -90.88, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 188.55, -7.17, -91.93, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 186.53, -6.52, -93.16, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 188.55, -7.17, -91.93, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 186.56, -6.74, -90.88, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 188.61, -7.19, -91.65, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 187.08, -6.93, -90.75, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 186.99, -6.93, -88.38, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 185.76, -6.62, -91.04, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 188.89, -7.12, -90.37, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 186.18, -7, -88.5, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 186.55, -6.57, -94.3, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 188.29, -6.97, -94.03, 2, math.random(0,3))
end


