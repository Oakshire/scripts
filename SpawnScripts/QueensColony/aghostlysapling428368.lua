--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlysapling428368.lua
	Script Purpose	:	Waypoint Path for aghostlysapling428368.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:54 
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
	MovementLoopAddLocation(NPC, 156.17, 0.05, -28.07, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 164.92, 1.39, 2.31, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 167.81, 1.38, 13.87, 2, 0)
	MovementLoopAddLocation(NPC, 166.15, 1.39, 20.57, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 179.08, 1.34, 5.52, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 169.44, 1.17, 17.22, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 155.76, 1.35, 11.38, 2, 0)
	MovementLoopAddLocation(NPC, 149.12, 0.18, 12.07, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 148.34, 0.19, 8.21, 2, 0)
	MovementLoopAddLocation(NPC, 149.56, 0, -13.15, 2, 0)
	MovementLoopAddLocation(NPC, 148.26, 0.14, -19.84, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 156.18, 0.04, -28.02, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 150.21, 0.19, -31.92, 2, 0)
	MovementLoopAddLocation(NPC, 146.52, 0.48, -30.83, 2, math.random(14, 30))
end


