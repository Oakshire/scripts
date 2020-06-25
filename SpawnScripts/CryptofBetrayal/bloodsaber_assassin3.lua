--[[
	Script Name		:	bloodsaber_assassin3.lua
	Script Purpose	:	Waypoint Path for bloodsaber_assassin3.lua
	Script Author	:	Devn00b
	Script Date		:	06/11/2020 04:25:39 PM
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
	MovementLoopAddLocation(NPC, -23.21, -0.18, -184.23, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -18.25, -0.18, -184, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -18.23, -0.18, -187.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -30.41, -0.8, -187.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -30.56, -0.7, -181.33, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -19.63, -0.18, -179.21, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -19.17, -0.18, -187.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -25.53, -0.18, -186.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -25.07, -0.18, -190.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -25.13, -0.18, -184.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -28.72, -0.8, -189.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -31.92, -0.27, -184.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -28.25, -0.18, -174.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -22.21, -0.18, -178.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -22.3, -0.18, -187.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -17.26, -0.18, -183.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -25.49, -0.18, -187.59, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -17.26, -0.18, -183.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -22.3, -0.18, -187.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -22.21, -0.18, -178.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -28.25, -0.18, -174.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -31.92, -0.27, -184.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -28.72, -0.8, -189.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -25.13, -0.18, -184.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -25.07, -0.18, -190.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -25.53, -0.18, -186.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -19.17, -0.18, -187.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -19.63, -0.18, -179.21, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -30.56, -0.7, -181.33, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -30.41, -0.8, -187.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -18.23, -0.18, -187.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -18.25, -0.18, -184, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -23.21, -0.18, -184.23, 2, math.random(0,10))
end


