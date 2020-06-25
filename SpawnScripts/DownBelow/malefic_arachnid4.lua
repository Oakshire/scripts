--[[
	Script Name		:	malefic_arachnid4.lua
	Script Purpose	:	Waypoint Path for malefic_arachnid4.lua
	Script Author	:	Devn00b
	Script Date		:	05/12/2020 03:04:24 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -110.13, -0.01, -183.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -110.43, 0, -193.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -105.09, 0, -193.65, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -104.17, 0, -190.41, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -114.49, 0, -190.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -114.93, 0, -193.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -110.03, 0, -194.08, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -110.12, -0.03, -182.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -104.02, -0.08, -172.73, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -104.96, -0.03, -180.28, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -108.5, -0.09, -177.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -105.12, -0.1, -173.83, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -112.4, 0.36, -167.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -121.37, -0.06, -167.19, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -120.72, 0.44, -152.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -117.5, -0.08, -153.35, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -117.61, 0.27, -159.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -117.13, -0.08, -171.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -120.7, 0.51, -181.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -120.44, -0.08, -166.77, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -120.7, 0.51, -181.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -117.13, -0.08, -171.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -117.61, 0.27, -159.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -117.5, -0.08, -153.35, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -120.72, 0.44, -152.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -121.37, -0.06, -167.19, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -112.4, 0.36, -167.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -105.12, -0.1, -173.83, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -108.5, -0.09, -177.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -104.96, -0.03, -180.28, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -104.02, -0.08, -172.73, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -110.12, -0.03, -182.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -110.03, 0, -194.08, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -114.93, 0, -193.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -114.49, 0, -190.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -104.17, 0, -190.41, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -105.09, 0, -193.65, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -110.43, 0, -193.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -110.13, -0.01, -183.81, 2, math.random(0,10))
end


