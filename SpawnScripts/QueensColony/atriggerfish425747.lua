--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425747.lua
	Script Purpose	:	Waypoint Path for atriggerfish425747.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:14:25 
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
	MovementLoopAddLocation(NPC, -148.45, -14.97, 138.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -148.4, -13.78, 116.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.04, -14, 83.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -141.99, -13.48, 130.93, 2, 0)
	MovementLoopAddLocation(NPC, -138.17, -13.26, 144.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.95, -13.08, 152.09, 2, 0)
	MovementLoopAddLocation(NPC, -125.65, -13.34, 174.92, 2, 0)
	MovementLoopAddLocation(NPC, -123.21, -13.8, 179.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.81, -13.8, 205.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.93, -12.94, 183.6, 2, 0)
	MovementLoopAddLocation(NPC, -132.32, -13.7, 179.11, 2, 0)
	MovementLoopAddLocation(NPC, -128.55, -13.82, 177.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.96, -13.47, 181.27, 2, 0)
	MovementLoopAddLocation(NPC, -120.17, -13.29, 182.56, 2, 0)
	MovementLoopAddLocation(NPC, -116.43, -13.53, 182.59, 2, 0)
	MovementLoopAddLocation(NPC, -108.61, -13.9, 186.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -106.63, -13.29, 186.69, 2, 0)
	MovementLoopAddLocation(NPC, -106.01, -12.61, 186.73, 2, 0)
	MovementLoopAddLocation(NPC, -104.55, -12.42, 185.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.7, -13.21, 183.5, 2, 0)
	MovementLoopAddLocation(NPC, -126.17, -14.15, 177.3, 2, 0)
	MovementLoopAddLocation(NPC, -128.93, -15.15, 175.91, 2, 0)
	MovementLoopAddLocation(NPC, -130.78, -15.11, 171.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.33, -15.23, 169.68, 2, 0)
	MovementLoopAddLocation(NPC, -138.45, -14.91, 159, 2, 0)
	MovementLoopAddLocation(NPC, -144.12, -14.59, 149.68, 2, 0)
	MovementLoopAddLocation(NPC, -148.1, -14.23, 140.68, 2, 0)
	MovementLoopAddLocation(NPC, -148.62, -15.01, 139.48, 2, 0)
end

