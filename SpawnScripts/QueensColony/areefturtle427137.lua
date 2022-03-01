--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427137.lua
	Script Purpose	:	Waypoint Path for areefturtle427137.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:46:43 
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
	MovementLoopAddLocation(NPC, -96.22, -13.12, 232.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -100.42, -13.53, 230.59, 2, 0)
	MovementLoopAddLocation(NPC, -104.22, -13.5, 231.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.59, -13.3, 225.29, 2, 0)
	MovementLoopAddLocation(NPC, -114.37, -12.5, 222.73, 2, 0)
	MovementLoopAddLocation(NPC, -117.01, -12.25, 218.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -113.12, -13.21, 227.87, 2, 0)
	MovementLoopAddLocation(NPC, -104.32, -13.47, 237.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -121.87, -12.31, 242, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -114.49, -14.65, 244.06, 2, 0)
	MovementLoopAddLocation(NPC, -109.75, -15.09, 249.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -118.97, -14.6, 244.38, 2, 0)
	MovementLoopAddLocation(NPC, -121.11, -14.76, 239.57, 2, 0)
	MovementLoopAddLocation(NPC, -128.03, -14.33, 229.97, 2, 0)
	MovementLoopAddLocation(NPC, -135.34, -13.63, 229.7, 2, 0)
	MovementLoopAddLocation(NPC, -139.71, -13.57, 229.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.07, -14.85, 223.9, 2, 0)
	MovementLoopAddLocation(NPC, -119.47, -14.81, 208.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -90.89, -12.4, 198.65, 2, 0)
	MovementLoopAddLocation(NPC, -88.38, -12.71, 198.13, 2, 0)
	MovementLoopAddLocation(NPC, -85.83, -12.75, 197.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -63.71, -11.3, 198.1, 2, 0)
	MovementLoopAddLocation(NPC, -57.53, -11.25, 196.88, 2, 0)
	MovementLoopAddLocation(NPC, -53.16, -11.78, 195.54, 2, 0)
	MovementLoopAddLocation(NPC, -51.99, -11.94, 193.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.59, -11.34, 196.56, 2, 0)
	MovementLoopAddLocation(NPC, -66.72, -10.5, 202.78, 2, 0)
	MovementLoopAddLocation(NPC, -74.63, -11.01, 206.88, 2, 0)
	MovementLoopAddLocation(NPC, -79.38, -11.25, 207.75, 2, 0)
	MovementLoopAddLocation(NPC, -81.8, -12.66, 219.11, 2, 0)
	MovementLoopAddLocation(NPC, -88.54, -13.2, 224.32, 2, 0)
end
