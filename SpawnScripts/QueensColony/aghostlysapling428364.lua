--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlysapling428364.lua
 	Script Purpose	:	Waypoint Path for aghostlysapling428364.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:44 
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
	MovementLoopAddLocation(NPC, 173.3, 1.37, -24.6, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 180.07, 1.34, -14.92, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 173.29, 1.37, -17.13, 2, 0)
	MovementLoopAddLocation(NPC, 160.09, 0.21, -24.85, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 164.67, 0.91, -22.81, 2, 0)
	MovementLoopAddLocation(NPC, 167.33, 1.32, -19.48, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 177.64, 1.35, 2.22, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 174.19, 1.16, 7.2, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 162.22, 1.41, -2.64, 2, 0)
	MovementLoopAddLocation(NPC, 159.51, 0.42, -8.44, 2, 0)
	MovementLoopAddLocation(NPC, 157.04, 0.07, -10.15, 2, 0)
	MovementLoopAddLocation(NPC, 153.21, 0.03, -10.04, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 155.47, 0.15, -8.12, 2, math.random(14, 30))
end


