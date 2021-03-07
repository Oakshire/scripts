--[[
	Script Name		:	gove_deer.lua
	Script Purpose	:	Waypoint Path for gove_deer.lua
	Script Author	:	Devn00b
	Script Date		:	07/05/2020 05:56:47 PM
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
	MovementLoopAddLocation(NPC, 543.4, -17.04, -390.35, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 537.12, -17.14, -401.36, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 531.58, -19.29, -422.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 538.17, -17.09, -396.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 533.23, -17.21, -395.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 529.71, -17.42, -388.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 545.71, -18.94, -365.65, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 522.76, -20.61, -287.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 545.43, -20.07, -278.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 588.75, -20.8, -253.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 540.07, -20.65, -292.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 555.29, -21.69, -313.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 558.67, -20.5, -341.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 572.15, -22.08, -357.42, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 558.67, -20.5, -341.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 555.29, -21.69, -313.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 540.07, -20.65, -292.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 588.75, -20.8, -253.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 545.43, -20.07, -278.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 522.76, -20.61, -287.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 545.71, -18.94, -365.65, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 529.71, -17.42, -388.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 533.23, -17.21, -395.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 538.17, -17.09, -396.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 531.58, -19.29, -422.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 537.12, -17.14, -401.36, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 543.4, -17.04, -390.35, 2, math.random(0,10))
end


