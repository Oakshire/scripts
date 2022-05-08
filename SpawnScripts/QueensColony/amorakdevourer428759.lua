--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer428759.lua
	Script Purpose	:	Waypoint Path for amorakdevourer428759.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:16:45 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "4") 
        SpawnSet(NPC, "difficulty", "2")  
        SpawnSet(NPC, "size", "28.8")
        SpawnSet(NPC, "hp", 35)
        SpawnSet(NPC, "power", 20)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 191.06, -0.68, -113.82, 2, 0)
	MovementLoopAddLocation(NPC, 185.97, -0.85, -112.47, 2, 0)
	MovementLoopAddLocation(NPC, 181.77, -0.83, -115.13, 2, 0)
	MovementLoopAddLocation(NPC, 177.09, -0.82, -125.65, 2, 0)
	MovementLoopAddLocation(NPC, 184.28, -0.84, -112.27, 2, 0)
	MovementLoopAddLocation(NPC, 191.94, -0.88, -104.81, 2, 0)
	MovementLoopAddLocation(NPC, 196.85, -0.89, -102.43, 2, 0)
	MovementLoopAddLocation(NPC, 214.49, -0.96, -100.99, 2, 0)
	MovementLoopAddLocation(NPC, 221.6, -0.98, -129.15, 2, 0)
	MovementLoopAddLocation(NPC, 225.02, -0.99, -137.83, 2, 0)
	MovementLoopAddLocation(NPC, 229.55, -1.01, -142.88, 2, 0)
	MovementLoopAddLocation(NPC, 229.35, -1, -147.44, 2, 0)
	MovementLoopAddLocation(NPC, 220.79, -0.97, -160.4, 2, 0)
	MovementLoopAddLocation(NPC, 208.28, -0.92, -167.09, 2, 0)
	MovementLoopAddLocation(NPC, 204.31, -0.9, -174.82, 2, 0)
	MovementLoopAddLocation(NPC, 204.23, -0.94, -181.86, 2, 0)
	MovementLoopAddLocation(NPC, 207.74, -0.92, -184.44, 2, 0)
	MovementLoopAddLocation(NPC, 210.71, -0.93, -187.84, 2, 0)
	MovementLoopAddLocation(NPC, 217.74, -0.76, -193.42, 2, 0)
	MovementLoopAddLocation(NPC, 210.19, -0.92, -187.57, 2, 0)
	MovementLoopAddLocation(NPC, 206.8, -0.94, -183.57, 2, 0)
	MovementLoopAddLocation(NPC, 204.06, -0.94, -181.62, 2, 0)
	MovementLoopAddLocation(NPC, 204.44, -0.91, -174.39, 2, 0)
	MovementLoopAddLocation(NPC, 208.5, -0.92, -166.64, 2, 0)
	MovementLoopAddLocation(NPC, 221.02, -0.97, -159.65, 2, 0)
	MovementLoopAddLocation(NPC, 229.4, -1, -147.04, 2, 0)
	MovementLoopAddLocation(NPC, 229.36, -1, -142.45, 2, 0)
	MovementLoopAddLocation(NPC, 224.25, -0.99, -137.07, 2, 0)
	MovementLoopAddLocation(NPC, 221.31, -0.98, -129, 2, 0)
	MovementLoopAddLocation(NPC, 217.86, -0.97, -109.12, 2, 0)
	MovementLoopAddLocation(NPC, 214.27, -0.96, -101.02, 2, 0)
	MovementLoopAddLocation(NPC, 196.79, -0.89, -102.15, 2, 0)
	MovementLoopAddLocation(NPC, 191.58, -0.87, -105.15, 2, 0)
	MovementLoopAddLocation(NPC, 184.47, -0.85, -112.31, 2, 0)
	MovementLoopAddLocation(NPC, 177.13, -0.82, -125.56, 2, 0)
	MovementLoopAddLocation(NPC, 178.65, -0.82, -120.98, 2, 0)
	MovementLoopAddLocation(NPC, 181.83, -0.84, -114.52, 2, 0)
	MovementLoopAddLocation(NPC, 186.13, -0.85, -112.29, 2, 0)
end