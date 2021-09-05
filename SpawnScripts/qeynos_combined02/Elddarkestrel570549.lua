--[[
    Script Name     :   SpawnScripts/qeynos_combined02/Elddarkestrel570549.lua
	Script Purpose	:	Waypoint Path for Elddarkestrel570549.lua
	Script Author	:	Rylec
	Script Date		:	09-04-2021 12:27:02 
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
	MovementLoopAddLocation(NPC, 632.81, -8, -381.14, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 624.46, -10, -387.5, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 631.02, -10.65, -384.25, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 628.82, -10, -387.69, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 635.12, -9, -378.9, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 634.1, -10, -389.8, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 632.26, -8.69, -380.86, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 640.85, -8, -383.94, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 627.28, -9.35, -381.92, 2, 0)
	MovementLoopAddLocation(NPC, 622.59, -10, -378.61, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 628.29, -9, -381.34, 2, 0)
	MovementLoopAddLocation(NPC, 634.38, -8.6, -383.08, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 630.47, -9, -384.36, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 638.25, -9.5, -388.35, 2, math.random(10, 17))
end
