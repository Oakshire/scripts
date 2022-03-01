--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlysapling428365.lua
	Script Purpose	:	Waypoint Path for aghostlysapling428365.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:47 
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
	MovementLoopAddLocation(NPC, 179, 1.15, -33.01, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 172.25, 1.37, -13.99, 2, 0)
	MovementLoopAddLocation(NPC, 169.67, 1.38, -11.21, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 182.87, 1.33, -1.25, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 182.52, 1.33, -4.41, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 151.92, 0.17, 13.72, 2, 0)
	MovementLoopAddLocation(NPC, 149.49, 0.6, 19.85, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 151.93, 0.63, 17.43, 2, 0)
	MovementLoopAddLocation(NPC, 161.19, 1.41, 13.69, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 164.39, 1.4, 1.74, 2, 0)
	MovementLoopAddLocation(NPC, 167.11, 1.39, -2.75, 2, 0)
	MovementLoopAddLocation(NPC, 169.31, 1.38, -7.42, 2, 0)
	MovementLoopAddLocation(NPC, 173.71, 1.37, -17.62, 2, 0)
	MovementLoopAddLocation(NPC, 173.18, 1.37, -30.3, 2, math.random(14, 30))
end


