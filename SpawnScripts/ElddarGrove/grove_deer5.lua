--[[
	Script Name		:	grove_deer5.lua
	Script Purpose	:	Waypoint Path for grove_deer5.lua
	Script Author	:	Devn00b
	Script Date		:	08/04/2020 02:11:00 PM
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
	MovementLoopAddLocation(NPC, 621.29, -21.03, -280.61, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 609.61, -22.4, -271.02, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 628.93, -19.97, -274.5, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 628.17, -21.83, -293.7, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 620.24, -21.79, -290.89, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 644.3, -21.4, -292.64, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 638.77, -21.11, -292.36, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 639.35, -18.97, -269.43, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 643.59, -19.21, -281.14, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 628.33, -20.77, -284.73, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 631.71, -20.14, -280.72, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 636.3, -21.54, -294.42, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 622.73, -22.04, -293.65, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 614.16, -22.11, -279.5, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 609.44, -22.39, -270.29, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 614.16, -22.11, -279.5, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 622.73, -22.04, -293.65, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 636.3, -21.54, -294.42, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 631.71, -20.14, -280.72, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 628.33, -20.77, -284.73, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 643.59, -19.21, -281.14, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 639.35, -18.97, -269.43, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 638.77, -21.11, -292.36, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 644.3, -21.4, -292.64, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 620.24, -21.79, -290.89, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 628.17, -21.83, -293.7, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 628.93, -19.97, -274.5, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 609.61, -22.4, -271.02, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 621.29, -21.03, -280.61, 2, math.random(0,15))
end


