--[[
	Script Name		:	bloodsaber_assassin2.lua
	Script Purpose	:	Waypoint Path for bloodsaber_assassin2.lua
	Script Author	:	Devn00b
	Script Date		:	06/11/2020 03:19:35 PM
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
	--[[Lua random sucks so lets make sure its random]]--
	fuckit = math.random(0,20)
	fuckit = math.random(0,20)
	fuckit = math.random(0,20)
	fuckit = math.random(0,20)
	MovementLoopAddLocation(NPC, 46.63, -0.15, -153.64, 2, fuckit)
	MovementLoopAddLocation(NPC, 42.63, -0.16, -155.12, 2, 0)
	MovementLoopAddLocation(NPC, 39.96, -0.16, -160.08, 2, 0)
	MovementLoopAddLocation(NPC, 41.33, -0.16, -164.5, 2, 0)
	MovementLoopAddLocation(NPC, 46.2, -0.15, -168.26, 2, 0)
	MovementLoopAddLocation(NPC, 48.05, -4.16, -182.53, 2, 0)
	MovementLoopAddLocation(NPC, 48.33, -0.15, -168.8, 2, 0)
	MovementLoopAddLocation(NPC, 51.72, -0.15, -166.74, 2, 0)
	MovementLoopAddLocation(NPC, 55.4, -0.16, -162.55, 2, 0)
	MovementLoopAddLocation(NPC, 68.88, -4.16, -161.49, 2, 0)
	MovementLoopAddLocation(NPC, 56.02, -0.21, -160.47, 2, 0)
	MovementLoopAddLocation(NPC, 52.75, -0.16, -155.54, 2, 0)
	MovementLoopAddLocation(NPC, 48.58, -0.15, -153.69, 2, 0)
	MovementLoopAddLocation(NPC, 48.74, -4.16, -139.25, 2, 0)
	MovementLoopAddLocation(NPC, 48.58, -0.15, -153.69, 2, 0)
	MovementLoopAddLocation(NPC, 52.75, -0.16, -155.54, 2, 0)
	MovementLoopAddLocation(NPC, 56.02, -0.21, -160.47, 2, 0)
	MovementLoopAddLocation(NPC, 68.88, -4.16, -161.49, 2, 0)
	MovementLoopAddLocation(NPC, 55.4, -0.16, -162.55, 2, 0)
	MovementLoopAddLocation(NPC, 51.72, -0.15, -166.74, 2, 0)
	MovementLoopAddLocation(NPC, 48.33, -0.15, -168.8, 2, 0)
	MovementLoopAddLocation(NPC, 48.05, -4.16, -182.53, 2, 0)
	MovementLoopAddLocation(NPC, 46.2, -0.15, -168.26, 2, 0)
	MovementLoopAddLocation(NPC, 41.33, -0.16, -164.5, 2, 0)
	MovementLoopAddLocation(NPC, 39.96, -0.16, -160.08, 2, 0)
	MovementLoopAddLocation(NPC, 42.63, -0.16, -155.12, 2, 0)
	MovementLoopAddLocation(NPC, 46.63, -0.15, -153.64, 2, fuckit)
end


