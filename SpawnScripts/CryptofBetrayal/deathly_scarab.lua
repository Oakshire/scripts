--[[
	Script Name		:	deathly_scarab.lua
	Script Purpose	:	Waypoint Path for deathly_scarab.lua
	Script Author	:	Devn00b
	Script Date		:	05/17/2020 01:51:37 AM
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
	MovementLoopAddLocation(NPC, 168.05, 6.78, -173.77, 2, 0)
	MovementLoopAddLocation(NPC, 178.69, 6.91, -172.76, 2, 0)
	MovementLoopAddLocation(NPC, 181.04, 6.79, -168.61, 2, 0)
	MovementLoopAddLocation(NPC, 179.92, 6.74, -155.51, 2, 0)
	MovementLoopAddLocation(NPC, 162.52, 7.05, -139.37, 2, 0)
	MovementLoopAddLocation(NPC, 151.91, 6.98, -139.38, 2, 0)
	MovementLoopAddLocation(NPC, 150.04, 8.18, -142.76, 2, 0)
	MovementLoopAddLocation(NPC, 149.49, 6.79, -168.63, 2, 0)
	MovementLoopAddLocation(NPC, 146.09, 7.33, -173.25, 2, 0)
	MovementLoopAddLocation(NPC, 134.73, 7, -171.61, 2, 0)
	MovementLoopAddLocation(NPC, 128.89, 7.39, -160.95, 2, 0)
	MovementLoopAddLocation(NPC, 128.61, 7, -126.46, 2, 0)
	MovementLoopAddLocation(NPC, 117.1, 7, -125.43, 2, 0)
	MovementLoopAddLocation(NPC, 114.78, 7, -125.31, 2, 0)
	MovementLoopAddLocation(NPC, 115.02, 7, -116.07, 2, 0)
	MovementLoopAddLocation(NPC, 118.59, 7, -110.23, 2, 0)
	MovementLoopAddLocation(NPC, 119.18, 7, -106.49, 2, 0)
	MovementLoopAddLocation(NPC, 131.81, 7, -98.3, 2, 0)
	MovementLoopAddLocation(NPC, 131.48, 7, -114.65, 2, 0)
	MovementLoopAddLocation(NPC, 140.71, 6.91, -114.7, 2, 0)
	MovementLoopAddLocation(NPC, 150.49, 6.9, -124.64, 2, 0)
	MovementLoopAddLocation(NPC, 151.25, 6.68, -138.12, 2, 0)
	MovementLoopAddLocation(NPC, 166.52, 6.78, -140.66, 2, 0)
	MovementLoopAddLocation(NPC, 182.11, 6.96, -157.69, 2, 0)
	MovementLoopAddLocation(NPC, 181.17, 6.99, -171.7, 2, 0)
	MovementLoopAddLocation(NPC, 175.53, 7.34, -173.4, 2, 0)
	MovementLoopAddLocation(NPC, 164.63, 6.94, -173.45, 2, 0)
	MovementLoopAddLocation(NPC, 160.85, 6.89, -186.28, 2, 0)
	MovementLoopAddLocation(NPC, 164.63, 6.94, -173.45, 2, 0)
	MovementLoopAddLocation(NPC, 175.53, 7.34, -173.4, 2, 0)
	MovementLoopAddLocation(NPC, 181.17, 6.99, -171.7, 2, 0)
	MovementLoopAddLocation(NPC, 182.11, 6.96, -157.69, 2, 0)
	MovementLoopAddLocation(NPC, 166.52, 6.78, -140.66, 2, 0)
	MovementLoopAddLocation(NPC, 151.25, 6.68, -138.12, 2, 0)
	MovementLoopAddLocation(NPC, 150.49, 6.9, -124.64, 2, 0)
	MovementLoopAddLocation(NPC, 140.71, 6.91, -114.7, 2, 0)
	MovementLoopAddLocation(NPC, 131.48, 7, -114.65, 2, 0)
	MovementLoopAddLocation(NPC, 131.81, 7, -98.3, 2, 0)
	MovementLoopAddLocation(NPC, 119.18, 7, -106.49, 2, 0)
	MovementLoopAddLocation(NPC, 118.59, 7, -110.23, 2, 0)
	MovementLoopAddLocation(NPC, 115.02, 7, -116.07, 2, 0)
	MovementLoopAddLocation(NPC, 114.78, 7, -125.31, 2, 0)
	MovementLoopAddLocation(NPC, 117.1, 7, -125.43, 2, 0)
	MovementLoopAddLocation(NPC, 128.61, 7, -126.46, 2, 0)
	MovementLoopAddLocation(NPC, 128.89, 7.39, -160.95, 2, 0)
	MovementLoopAddLocation(NPC, 134.73, 7, -171.61, 2, 0)
	MovementLoopAddLocation(NPC, 146.09, 7.33, -173.25, 2, 0)
	MovementLoopAddLocation(NPC, 149.49, 6.79, -168.63, 2, 0)
	MovementLoopAddLocation(NPC, 150.04, 8.18, -142.76, 2, 0)
	MovementLoopAddLocation(NPC, 151.91, 6.98, -139.38, 2, 0)
	MovementLoopAddLocation(NPC, 162.52, 7.05, -139.37, 2, 0)
	MovementLoopAddLocation(NPC, 179.92, 6.74, -155.51, 2, 0)
	MovementLoopAddLocation(NPC, 181.04, 6.79, -168.61, 2, 0)
	MovementLoopAddLocation(NPC, 178.69, 6.91, -172.76, 2, 0)
	MovementLoopAddLocation(NPC, 168.05, 6.78, -173.77, 2, 0)
end


