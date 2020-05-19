--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlysapling428401.lua
	Script Purpose	:	Waypoint Path for aghostlysapling428401.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:34 
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
	MovementLoopAddLocation(NPC, 143.6, 0.44, -2.77, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 151.38, 0.18, 0.39, 2, 0)
	MovementLoopAddLocation(NPC, 155.9, 1.42, 0.91, 2, 0)
	MovementLoopAddLocation(NPC, 175.25, 1.29, 13.25, 2, 0)
	MovementLoopAddLocation(NPC, 177.89, 1.34, 13.92, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 177.93, 1.34, 12.83, 2, 0)
	MovementLoopAddLocation(NPC, 181.21, 1.33, 9.84, 2, 0)
	MovementLoopAddLocation(NPC, 187.42, 1.31, 7.17, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 188.84, 1.31, -0.68, 2, 0)
	MovementLoopAddLocation(NPC, 190.39, 1.63, -19.35, 2, 0)
	MovementLoopAddLocation(NPC, 188.99, 1.31, -23.42, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 184.54, 1.33, -23.15, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 170.75, 1.38, -24.62, 2, 0)
	MovementLoopAddLocation(NPC, 164.48, 0.88, -23.58, 2, 0)
	MovementLoopAddLocation(NPC, 152.07, -0.37, -23, 2, 0)
	MovementLoopAddLocation(NPC, 148.49, 0.11, -23.84, 2, 0)
	MovementLoopAddLocation(NPC, 145.91, 0.65, -26.55, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 153.51, 0.18, -30.93, 2, 0)
	MovementLoopAddLocation(NPC, 155.25, 0.17, -33.44, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 153.26, -0.37, -22.54, 2, 0)
	MovementLoopAddLocation(NPC, 145.06, 0.57, -5.99, 2, 0)
	MovementLoopAddLocation(NPC, 145.88, 0.2, -1.18, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 144.78, 0.59, -4.68, 2, 0)
	MovementLoopAddLocation(NPC, 146.45, 0.42, -8.39, 2, 0)
	MovementLoopAddLocation(NPC, 157.23, -0.19, -18.32, 2, 0)
	MovementLoopAddLocation(NPC, 165.01, 0.96, -21.61, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 160.87, 1.41, -6.37, 2, 0)
	MovementLoopAddLocation(NPC, 157.74, 1.42, -1.52, 2, 0)
	MovementLoopAddLocation(NPC, 157.15, 1.42, 1.79, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 158.92, 1.42, 2.12, 2, 0)
	MovementLoopAddLocation(NPC, 161.74, 1.41, 1.52, 2, 0)
	MovementLoopAddLocation(NPC, 169.01, 1.38, -3.26, 2, 0)
	MovementLoopAddLocation(NPC, 174.22, 1.16, -9.57, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 164.96, 1.4, -7.06, 2, 0)
	MovementLoopAddLocation(NPC, 159.19, 1.42, -4.74, 2, 0)
	MovementLoopAddLocation(NPC, 151.48, 0.18, -3.74, 2, 0)
	MovementLoopAddLocation(NPC, 148.18, 0.19, -2.48, 2, 0)
end

