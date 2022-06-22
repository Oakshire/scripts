--[[
	Script Name		:	tomb_priest3.lua
	Script Purpose	:	Waypoint Path for tomb_priest3.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 09:13:17 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =14
    local level2 = 15
    local difficulty1 = 6
    local hp1 = 765
    local power1 = 240
    local difficulty2 = 6
    local hp2 = 890
    local power2 = 270
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
	MovementLoopAddLocation(NPC, 235.49, 0.77, -156.88, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 237.97, 0, -173.39, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 237.84, 0, -155.82, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 234.62, 0, -162.08, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 232.86, 0.01, -155.09, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 234.62, 0, -162.08, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 237.84, 0, -155.82, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 237.97, 0, -173.39, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 235.49, 0.77, -156.88, 2, math.random(0,7))
end


