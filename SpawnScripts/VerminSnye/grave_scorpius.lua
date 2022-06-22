--[[
	Script Name		:	grave_scorpius.lua
	Script Purpose	:	Waypoint Path for grave_scorpius.lua
	Script Author	:	Devn00b
	Script Date		:	06/24/2020 02:58:42 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =13
    local level2 = 14
    local difficulty1 = 6
    local hp1 = 680
    local power1 = 205
    local difficulty2 = 6
    local hp2 = 795
    local power2 = 240
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
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 106.63, -0.21, -174.31, 2, 0)
	MovementLoopAddLocation(NPC, 116.67, 0.01, -168.54, 2, 0)
	MovementLoopAddLocation(NPC, 131.56, 0.06, -164.47, 2, 0)
	MovementLoopAddLocation(NPC, 131.83, -0.05, -138.26, 2, 0)
	MovementLoopAddLocation(NPC, 128.77, 0.07, -129.77, 2, 0)
	MovementLoopAddLocation(NPC, 119.85, 0, -118.08, 2, 0)
	MovementLoopAddLocation(NPC, 128.77, 0.07, -129.77, 2, 0)
	MovementLoopAddLocation(NPC, 131.83, -0.05, -138.26, 2, 0)
	MovementLoopAddLocation(NPC, 131.56, 0.06, -164.47, 2, 0)
	MovementLoopAddLocation(NPC, 116.67, 0.01, -168.54, 2, 0)
	MovementLoopAddLocation(NPC, 106.63, -0.21, -174.31, 2, 0)
end


