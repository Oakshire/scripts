--[[
    Script Name    : SpawnScripts/Caves/aMudpawlookoutRoam1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.04 06:10:37
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 8
    local level2 = 9
    local difficulty1 = 6
    local hp1 = 240
    local power1 = 100
    local difficulty2 = 6
    local hp2 = 290
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


function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 36.74, 12.38, -85.77, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 24.39, 12.38, -81.15, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 24.39, 12.38, -81.15, 2, 0)
	MovementLoopAddLocation(NPC, 22.18, 12.38, -63.93, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 22.18, 12.38, -63.93, 2, 0)
	MovementLoopAddLocation(NPC, 25.65, 12.38, -78.72, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 25.65, 12.38, -78.72, 2, 0)
	MovementLoopAddLocation(NPC, 13.18, 12.99, -82.22, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 13.18, 12.99, -82.22, 2, 0)
	MovementLoopAddLocation(NPC, 25.53, 12, -100.04, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 25.53, 12, -100.04, 2, 0)
	MovementLoopAddLocation(NPC, 8.37, 14.72, -84.19, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 8.37, 14.72, -84.19, 2, 0)
	MovementLoopAddLocation(NPC, 15.84, 12.6, -81.11, 2, 0)
	MovementLoopAddLocation(NPC, 26.51, 11.93, -89.3, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 26.51, 11.93, -89.3, 2, 0)
	MovementLoopAddLocation(NPC, 36.74, 12.38, -85.77, 2, 0)
end

