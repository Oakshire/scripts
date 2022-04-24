--[[
	Script Name		:	malefic_arachnid6.lua
	Script Purpose	:	Waypoint Path for malefic_arachnid6.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 01:08:53 PM
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
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -146.67, -0.25, -187.58, 2, 0)
	MovementLoopAddLocation(NPC, -145.48, -0.24, -189.23, 2, 0)
	MovementLoopAddLocation(NPC, -144.05, -0.24, -185.2, 2, 0)
	MovementLoopAddLocation(NPC, -148, -0.24, -183.35, 2, 0)
	MovementLoopAddLocation(NPC, -149.22, -0.24, -187.28, 2, 0)
	MovementLoopAddLocation(NPC, -147.6, -0.24, -188.29, 2, 0)
	MovementLoopAddLocation(NPC, -146.95, -0.26, -186.56, 2, 0)
	MovementLoopAddLocation(NPC, -144.42, -0.24, -185.61, 2, 0)
	MovementLoopAddLocation(NPC, -148.26, -0.24, -183.23, 2, 0)
	MovementLoopAddLocation(NPC, -145.97, -0.24, -184.62, 2, 0)
	MovementLoopAddLocation(NPC, -146.12, -0.23, -189.66, 2, 0)
	MovementLoopAddLocation(NPC, -144.31, -0.24, -185.6, 2, 0)
	MovementLoopAddLocation(NPC, -147.16, -0.24, -183.82, 2, 0)
	MovementLoopAddLocation(NPC, -146.93, -0.24, -183.76, 2, 0)
	MovementLoopAddLocation(NPC, -144.42, -0.24, -184.77, 2, 0)
	MovementLoopAddLocation(NPC, -145.4, -0.24, -187.19, 2, 0)
	MovementLoopAddLocation(NPC, -149.13, 0.33, -185.68, 2, 0)
	MovementLoopAddLocation(NPC, -147.41, -0.24, -188.78, 2, 0)
	MovementLoopAddLocation(NPC, -149.13, 0.33, -185.68, 2, 0)
	MovementLoopAddLocation(NPC, -145.4, -0.24, -187.19, 2, 0)
	MovementLoopAddLocation(NPC, -144.42, -0.24, -184.77, 2, 0)
	MovementLoopAddLocation(NPC, -146.93, -0.24, -183.76, 2, 0)
	MovementLoopAddLocation(NPC, -147.16, -0.24, -183.82, 2, 0)
	MovementLoopAddLocation(NPC, -144.31, -0.24, -185.6, 2, 0)
	MovementLoopAddLocation(NPC, -146.12, -0.23, -189.66, 2, 0)
	MovementLoopAddLocation(NPC, -145.97, -0.24, -184.62, 2, 0)
	MovementLoopAddLocation(NPC, -148.26, -0.24, -183.23, 2, 0)
	MovementLoopAddLocation(NPC, -144.42, -0.24, -185.61, 2, 0)
	MovementLoopAddLocation(NPC, -146.95, -0.26, -186.56, 2, 0)
	MovementLoopAddLocation(NPC, -147.6, -0.24, -188.29, 2, 0)
	MovementLoopAddLocation(NPC, -149.22, -0.24, -187.28, 2, 0)
	MovementLoopAddLocation(NPC, -148, -0.24, -183.35, 2, 0)
	MovementLoopAddLocation(NPC, -144.05, -0.24, -185.2, 2, 0)
	MovementLoopAddLocation(NPC, -145.48, -0.24, -189.23, 2, 0)
	MovementLoopAddLocation(NPC, -146.67, -0.25, -187.58, 2, 0)
end


