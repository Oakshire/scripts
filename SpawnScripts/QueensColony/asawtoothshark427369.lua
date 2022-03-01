--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427369.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427369.lua
	Script Author	:	Rylec
	Script Date	:	11-11-2019 06:43:43 
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
	MovementLoopAddLocation(NPC, -105.63, -11.72, 175.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.21, -13.66, 175.93, 2, 0)
	MovementLoopAddLocation(NPC, -136.13, -14.64, 186.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -141.46, -13.06, 182.47, 2, 0)
	MovementLoopAddLocation(NPC, -143.1, -12.39, 164.73, 2, 0)
	MovementLoopAddLocation(NPC, -147.66, -13.01, 153.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.3, -12.35, 170.98, 2, 0)
	MovementLoopAddLocation(NPC, -139.5, -12.46, 197.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -141.54, -12.35, 181.65, 2, 0)
	MovementLoopAddLocation(NPC, -141.25, -12.37, 157.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -146.98, -11.75, 184.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -141, -12.49, 188.58, 2, 0)
	MovementLoopAddLocation(NPC, -135.79, -13.18, 193.88, 2, 0)
	MovementLoopAddLocation(NPC, -131.8, -13.58, 198.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.2, -12.42, 190.67, 2, 0)
	MovementLoopAddLocation(NPC, -129.42, -12.39, 185.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.49, -13.09, 179.59, 2, 0)
	MovementLoopAddLocation(NPC, -119.11, -13.57, 175.8, 2, 0)
	MovementLoopAddLocation(NPC, -112.17, -12.85, 165.92, 2, math.random(10, 20))
end


