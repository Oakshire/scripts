--[[
	Script Name		:	malefic_arachnid3.lua
	Script Purpose	:	Waypoint Path for malefic_arachnid3.lua
	Script Author	:	Devn00b
	Script Date		:	05/12/2020 12:34:44 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
          local Level = GetLevel(NPC)
    local level1 = 6
    local level2 = 7
    local difficulty1 = 6
    local hp1 = 150
    local power1 = 150
    local difficulty2 = 6
    local hp2 = 215
    local power2 = 215
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
 spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -81.33, -0.07, -186.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.22, -0.07, -180.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.57, 0.06, -173.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.55, -0.1, -165.72, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -89.47, -0.05, -174.62, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -82.58, -0.05, -182.5, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -82.74, -0.05, -190.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -92, -0.05, -196.6, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -92.47, -0.1, -192.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -89.24, 0.46, -193.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.12, 0.14, -194.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.88, 0, -194.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.52, 0, -208.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.6, 0, -194.59, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -92.45, -0.06, -194.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.08, -0.04, -196.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.03, -0.06, -190.1, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.32, -0.06, -193.17, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -81.34, -0.07, -189.55, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.11, -0.07, -189.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.92, -0.09, -189.85, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -80.89, -0.08, -186.07, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.06, -0.06, -186.02, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.05, -0.06, -178.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.88, -0.06, -181.12, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -91.69, -0.07, -174.91, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.42, -0.01, -173.91, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -91.69, -0.07, -174.91, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.88, -0.06, -181.12, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.05, -0.06, -178.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.06, -0.06, -186.02, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -80.89, -0.08, -186.07, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.92, -0.09, -189.85, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.11, -0.07, -189.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -81.34, -0.07, -189.55, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.32, -0.06, -193.17, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.03, -0.06, -190.1, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.08, -0.04, -196.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -92.45, -0.06, -194.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.6, 0, -194.59, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.52, 0, -208.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.88, 0, -194.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.12, 0.14, -194.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -89.24, 0.46, -193.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -92.47, -0.1, -192.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -92, -0.05, -196.6, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -82.74, -0.05, -190.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -82.58, -0.05, -182.5, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -89.47, -0.05, -174.62, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.55, -0.1, -165.72, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.57, 0.06, -173.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.22, -0.07, -180.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -81.33, -0.07, -186.09, 2, math.random(0,10))
end


