--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770044.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770044.lua
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
	MovementLoopAddLocation(NPC, -110.82, 4.5, -147.11, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -109.49, 4.49, -133.59, 2, 0)
	MovementLoopAddLocation(NPC, -110.64, 4.62, -127.59, 2, 0)
	MovementLoopAddLocation(NPC, -109.7, 4.36, -114.1, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -109.71, 4.49, -120.1, 2, 0)
	MovementLoopAddLocation(NPC, -110.46, 4.63, -127.8, 2, 0)
	MovementLoopAddLocation(NPC, -109.69, 4.49, -134.24, 2, 0)
	MovementLoopAddLocation(NPC, -109.81, 4.49, -142.01, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -106.49, 4.28, -143.33, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -105.81, 4.28, -138.99, 2, 0)
	MovementLoopAddLocation(NPC, -108.94, 4.48, -117.84, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -110.15, 4.63, -127.44, 2, 0)
	MovementLoopAddLocation(NPC, -109.8, 4.49, -142.06, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -110.36, 4.62, -128.44, 2, 0)
	MovementLoopAddLocation(NPC, -108.32, 4.48, -118.76, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -110.25, 4.63, -127.52, 2, 0)
	MovementLoopAddLocation(NPC, -108.56, 4.49, -149.97, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -105.74, 4.33, -136.97, 2, 0)
	MovementLoopAddLocation(NPC, -100.15, 4.38, -127.77, 2, 0)
	MovementLoopAddLocation(NPC, -100.74, 4.46, -121.8, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -100.15, 4.38, -127.77, 2, 0)
	MovementLoopAddLocation(NPC, -103.25, 4.27, -131.83, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -105.93, 4.28, -139.03, 2, 0)
end

