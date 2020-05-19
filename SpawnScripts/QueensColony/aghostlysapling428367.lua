--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlysapling428367.lua
	Script Purpose	:	Waypoint Path for aghostlysapling428367.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:52 
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
	MovementLoopAddLocation(NPC, 157.99, -0.09, -15.28, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 181.44, 1.17, -24.69, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 164.56, 1.39, 8.23, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 162.65, 0.58, -13.12, 2, 0)
	MovementLoopAddLocation(NPC, 163.23, 0.69, -26.3, 2, 0)
	MovementLoopAddLocation(NPC, 164.94, 0.97, -29.73, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 168.73, 1.39, -28.61, 2, 0)
	MovementLoopAddLocation(NPC, 178.95, 1.15, -31.49, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 164.69, 0.91, -21.46, 2, 0)
	MovementLoopAddLocation(NPC, 154.08, -0.38, -18.14, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 155.25, 0.51, -3.88, 2, 0)
	MovementLoopAddLocation(NPC, 157.62, 1.42, 1.19, 2, 0)
	MovementLoopAddLocation(NPC, 176.29, 1.35, 11.8, 2, 0)
	MovementLoopAddLocation(NPC, 178.51, 1.34, 14.61, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 176.8, 1.35, 13.76, 2, 0)
	MovementLoopAddLocation(NPC, 175.52, 1.32, 7.05, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 173.18, 1.37, -17.93, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 167.18, 1.38, 16.12, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 164.39, 1.39, 10.96, 2, 0)
	MovementLoopAddLocation(NPC, 159.89, 0.15, -10.71, 2, math.random(14, 30))
end


