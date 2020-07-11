--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer428734.lua
	Script Purpose	:	Waypoint Path for amorakdevourer428734.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:16:45 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "4") 
        SpawnSet(NPC, "difficulty", "2")  
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 197, -0.68, -187.72, 2, 0)
	MovementLoopAddLocation(NPC, 197.75, -0.88, -181.16, 2, 0)
	MovementLoopAddLocation(NPC, 187.6, -0.84, -180.83, 2, 0)
	MovementLoopAddLocation(NPC, 179.09, -0.81, -185.05, 2, 0)
	MovementLoopAddLocation(NPC, 171.12, -0.78, -200.75, 2, 0)
	MovementLoopAddLocation(NPC, 159.93, -0.74, -205.5, 2, 0)
	MovementLoopAddLocation(NPC, 149.48, -0.7, -206.92, 2, 0)
	MovementLoopAddLocation(NPC, 135.99, -0.65, -201.96, 2, 0)
	MovementLoopAddLocation(NPC, 129.13, -0.62, -194.93, 2, 0)
	MovementLoopAddLocation(NPC, 122.91, -0.6, -182.87, 2, 0)
	MovementLoopAddLocation(NPC, 118.16, -0.47, -179.78, 2, 0)
	MovementLoopAddLocation(NPC, 113.71, -0.07, -182.34, 2, 0)
	MovementLoopAddLocation(NPC, 111.94, 0.55, -187.57, 2, 0)
	MovementLoopAddLocation(NPC, 114.27, -0.11, -182.18, 2, 0)
	MovementLoopAddLocation(NPC, 118.48, -0.52, -179.71, 2, 0)
	MovementLoopAddLocation(NPC, 123.54, -0.6, -183.95, 2, 0)
	MovementLoopAddLocation(NPC, 129.57, -0.63, -195.34, 2, 0)
	MovementLoopAddLocation(NPC, 136.46, -0.65, -202.07, 2, 0)
	MovementLoopAddLocation(NPC, 149.75, -0.7, -206.9, 2, 0)
	MovementLoopAddLocation(NPC, 160.87, -0.74, -205.27, 2, 0)
	MovementLoopAddLocation(NPC, 170.82, -0.78, -200.96, 2, 0)
	MovementLoopAddLocation(NPC, 178.77, -0.81, -185.09, 2, 0)
	MovementLoopAddLocation(NPC, 187.72, -0.84, -180.74, 2, 0)
	MovementLoopAddLocation(NPC, 197.82, -0.88, -181.04, 2, 0)
end