--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769555.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769555.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:16:45 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "4") 
        SpawnSet(NPC, "size", "28.8")
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 158.59, -0.54, -219.27, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 154.48, -0.8, -217.82, 2, 0)
	MovementLoopAddLocation(NPC, 139.8, -0.47, -210.29, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 164.41, -0.56, -218.53, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 133.75, -0.83, -217.43, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 173.27, -0.59, -213.54, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 150.17, -0.87, -217.16, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 167.62, -0.57, -208.25, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 131.16, -0.56, -214.32, 2, math.random(14, 25))
end
