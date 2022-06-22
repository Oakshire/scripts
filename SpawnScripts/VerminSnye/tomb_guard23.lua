--[[
	Script Name		:	tomb_guard23.lua
	Script Purpose	:	Waypoint Path for tomb_guard23.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 10:14:48 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
     local Level = GetLevel(NPC)
    local level1 =15
    local level2 = 16
    local difficulty1 = 2
    local hp1 = 290
    local power1 = 100
    local difficulty2 = 2
    local hp2 = 345
    local power2 = 110
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
	MovementLoopAddLocation(NPC, 170.46, -6.94, -185.73, 2, 0)
	MovementLoopAddLocation(NPC, 178.27, -6.94, -188.48, 2, 0)
	MovementLoopAddLocation(NPC, 179.7, -6.94, -191.91, 2, 0)
	MovementLoopAddLocation(NPC, 174.17, -9.27, -195.08, 2, 0)
	MovementLoopAddLocation(NPC, 171.4, -11.62, -196.58, 2, 0)
	MovementLoopAddLocation(NPC, 166.55, -11.4, -198.42, 2, 0)
	MovementLoopAddLocation(NPC, 180.57, -6.94, -192.41, 2, 0)
	MovementLoopAddLocation(NPC, 173.34, -6.94, -185.72, 2, 0)
	MovementLoopAddLocation(NPC, 168.78, -6.94, -186, 2, 0)
	MovementLoopAddLocation(NPC, 161.91, -6.32, -187.67, 2, 0)
	MovementLoopAddLocation(NPC, 157.77, -5.52, -192.61, 2, 0)
	MovementLoopAddLocation(NPC, 156.31, -4.69, -198.92, 2, 0)
	MovementLoopAddLocation(NPC, 159.11, -3.92, -204.48, 2, 0)
	MovementLoopAddLocation(NPC, 163.25, -3.13, -208.87, 2, 0)
	MovementLoopAddLocation(NPC, 169.28, -2.2, -210.56, 2, 0)
	MovementLoopAddLocation(NPC, 175.3, -1.39, -208.68, 2, 0)
	MovementLoopAddLocation(NPC, 179.94, -0.61, -204.42, 2, 0)
	MovementLoopAddLocation(NPC, 181.57, 0.09, -198.63, 2, 0)
	MovementLoopAddLocation(NPC, 181.5, 0.09, -195.76, 2, 0)
	MovementLoopAddLocation(NPC, 181.57, 0.09, -198.63, 2, 0)
	MovementLoopAddLocation(NPC, 179.94, -0.61, -204.42, 2, 0)
	MovementLoopAddLocation(NPC, 175.3, -1.39, -208.68, 2, 0)
	MovementLoopAddLocation(NPC, 169.28, -2.2, -210.56, 2, 0)
	MovementLoopAddLocation(NPC, 163.25, -3.13, -208.87, 2, 0)
	MovementLoopAddLocation(NPC, 159.11, -3.92, -204.48, 2, 0)
	MovementLoopAddLocation(NPC, 156.31, -4.69, -198.92, 2, 0)
	MovementLoopAddLocation(NPC, 157.77, -5.52, -192.61, 2, 0)
	MovementLoopAddLocation(NPC, 161.91, -6.32, -187.67, 2, 0)
	MovementLoopAddLocation(NPC, 168.78, -6.94, -186, 2, 0)
	MovementLoopAddLocation(NPC, 173.34, -6.94, -185.72, 2, 0)
	MovementLoopAddLocation(NPC, 180.57, -6.94, -192.41, 2, 0)
	MovementLoopAddLocation(NPC, 166.55, -11.4, -198.42, 2, 0)
	MovementLoopAddLocation(NPC, 171.4, -11.62, -196.58, 2, 0)
	MovementLoopAddLocation(NPC, 174.17, -9.27, -195.08, 2, 0)
	MovementLoopAddLocation(NPC, 179.7, -6.94, -191.91, 2, 0)
	MovementLoopAddLocation(NPC, 178.27, -6.94, -188.48, 2, 0)
	MovementLoopAddLocation(NPC, 170.46, -6.94, -185.73, 2, 0)
end


