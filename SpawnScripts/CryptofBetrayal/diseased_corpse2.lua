--[[
	Script Name		:	diseased_corpse2.lua
	Script Purpose	:	Waypoint Path for diseased_corpse2.lua
	Script Author	:	Devn00b
	Script Date		:	05/17/2020 01:39:01 AM
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
	MovementLoopAddLocation(NPC, 173.58, 13.92, -196.85, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 169.14, 12.56, -210.21, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 165.58, 12.13, -212.48, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 157.39, 11.1, -212.33, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 149.48, 9.79, -205.85, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 148.32, 9.53, -203.91, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 148.69, 8.43, -194.05, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 154.21, 7.36, -187.06, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 162.92, 6.89, -186.27, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 172.07, 6.89, -193.4, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 161.7, 6.89, -187.85, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 161.6, 6.92, -177.56, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 167.76, 6.79, -174.24, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 179.06, 7, -173.42, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 181.71, 6.84, -168.69, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 183.13, 6.97, -164.59, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 181.93, 6.94, -156.57, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 173.89, 6.92, -147.71, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 164.72, 6.92, -138.87, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 151.2, 6.66, -137.96, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 164.72, 6.92, -138.87, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 173.89, 6.92, -147.71, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 181.93, 6.94, -156.57, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 183.13, 6.97, -164.59, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 181.71, 6.84, -168.69, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 179.06, 7, -173.42, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 167.76, 6.79, -174.24, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 161.6, 6.92, -177.56, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 161.7, 6.89, -187.85, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 172.07, 6.89, -193.4, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 162.92, 6.89, -186.27, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 154.21, 7.36, -187.06, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 148.69, 8.43, -194.05, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 148.32, 9.53, -203.91, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 149.48, 9.79, -205.85, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 157.39, 11.1, -212.33, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 165.58, 12.13, -212.48, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 169.14, 12.56, -210.21, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 173.58, 13.92, -196.85, 2, math.random(0,7))
end


