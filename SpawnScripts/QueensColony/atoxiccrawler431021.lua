--[[
        Script Name     :       SpawnScripts/QueensColony/atoxiccrawler431021.lua
	Script Purpose	:	Waypoint Path for atoxiccrawler431021.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:46:52 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    SetInfoStructSInt(NPC, "hp_regen", 0)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 131.25, 1.5, 101.61, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 124.2, 1.53, 85.98, 2, 0)
	MovementLoopAddLocation(NPC, 122.32, 1.57, 77.22, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 124.02, 1.53, 80.13, 2, 0)
	MovementLoopAddLocation(NPC, 129.36, 1.35, 85.66, 2, 0)
	MovementLoopAddLocation(NPC, 139.57, 1.67, 99.69, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 131.56, 1.5, 98.14, 2, 0)
	MovementLoopAddLocation(NPC, 127.58, 1.37, 95.93, 2, 0)
	MovementLoopAddLocation(NPC, 126.15, 1.32, 95.85, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 117.73, 1.55, 107.33, 2, 0)
	MovementLoopAddLocation(NPC, 109.63, 1.37, 107.93, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 128.55, 1.51, 82.43, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 132.19, 1.3, 89.98, 2, 0)
	MovementLoopAddLocation(NPC, 133.36, 1.49, 93.99, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 132.43, 1.3, 84.86, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 130, 1.3, 91.89, 2, 0)
	MovementLoopAddLocation(NPC, 129.7, 1.5, 96.4, 2, 0)
end


