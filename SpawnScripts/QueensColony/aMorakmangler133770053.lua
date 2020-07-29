--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770053.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770053.lua
	Script Author	:	Rylec
	Script Date	:	07-28-2020 10:33:33 
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
	MovementLoopAddLocation(NPC, -127.93, 3.68, -108.81, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -121.25, 3.66, -113.02, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -123.62, 3.66, -117.24, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -127.57, 3.68, -117.75, 2, 0)
	MovementLoopAddLocation(NPC, -132.5, 3.7, -114.03, 2, 0)
	MovementLoopAddLocation(NPC, -134.89, 3.71, -113.41, 2, 0)
	MovementLoopAddLocation(NPC, -138.59, 3.72, -113.81, 2, 0)
	MovementLoopAddLocation(NPC, -145.09, 3.75, -110.56, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -138.49, 4.18, -108.66, 2, 0)
	MovementLoopAddLocation(NPC, -130.83, 3.69, -112.3, 2, 0)
	MovementLoopAddLocation(NPC, -119.95, 3.65, -114.37, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -128.86, 3.68, -112.71, 2, 0)
	MovementLoopAddLocation(NPC, -136.44, 3.99, -109.5, 2, 0)
	MovementLoopAddLocation(NPC, -145.58, 3.78, -108.31, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -144.91, 3.75, -98.29, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -138.01, 4.59, -101, 2, 0)
end

