--[[
    Script Name    : SpawnScripts/Nettleville/astonescrabbler.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.06 06:07:27
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 1
    local level2 = 2
    local level3 = 3
    local difficulty1 = 6
    local hp1 = 30
    local power1 = 25
    local difficulty2 = 6
    local hp2 = 45
    local power2 = 35
    local difficulty3 =6
    local hp3 = 75
    local power3 = 45
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
     elseif Level == level3
        then
    SpawnSet(NPC, "difficulty", difficulty3)
    SpawnSet(NPC, "hp", hp3)
    SpawnSet(NPC, "power", power3)
    end
waypoints(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end


function waypoints(NPC)
    if GetSpawnLocationID(NPC)==133773395 then
	MovementLoopAddLocation(NPC, 571.92, -26.19, 372.63, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 571.47, -26.12, 371.85, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 573.95, -26.19, 372.85, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 574.13, -26.26, 373.53, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 572.2, -26.16, 372.36, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 573.59, -25.89, 370.6, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 572.99, -26.23, 373.05, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 571.21, -26.28, 373.37, 1, math.random(8,12))
    elseif GetSpawnLocationID(NPC)==419486 then
    MovementLoopAddLocation(NPC, 570.02, -25.71, 368.64, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 569.07, -25.75, 368.89, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 568.51, -25.39, 367.62, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 568.72, -25.28, 367.23, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 569.41, -25.28, 367.21, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 571.68, -25.71, 368.76, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 570.71, -25.77, 369.11, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 569.69, -25.75, 368.9, 1, math.random(8,12))
    elseif GetSpawnLocationID(NPC)==133773397 then
	MovementLoopAddLocation(NPC, 576.5, -25.9, 371.31, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 576.57, -25.63, 370.04, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 578.41, -25.97, 371.7, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 579.54, -26.18, 373.65, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 578.71, -25.52, 369.82, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 576.94, -25.88, 371.16, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 577.33, -26.22, 373.9, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 578.6, -25.66, 370.36, 1, math.random(8,12))
    elseif GetSpawnLocationID(NPC)==133773396 then
	MovementLoopAddLocation(NPC, 580.92, -25.86, 371.81, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 580.39, -25.59, 370.54, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 582.6, -25.54, 371.01, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 580.7, -26.04, 372.57, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 582.35, -26.1, 373.4, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 580.4, -25.67, 370.88, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 581.82, -25.61, 371.05, 1, math.random(8,12))
    elseif GetSpawnLocationID(NPC)==133773394 then
	MovementLoopAddLocation(NPC, 685.72, -22.29, 345.68, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 687.28, -21, 343.77, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 687.11, -22.22, 346.43, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 685.74, -22.28, 345.67, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 685.19, -21.17, 343.03, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 685.83, -22.54, 346.43, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 685.3, -22.49, 345.95, 1, math.random(8,12))
    elseif GetSpawnLocationID(NPC)==419490 then
	MovementLoopAddLocation(NPC, 682.11, -23.2, 345.44, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 681.44, -22.72, 344.14, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 680.32, -23.78, 346.27, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 681.45, -23.84, 347.07, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 682.93, -21.63, 342.77, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 681.45, -22.98, 344.63, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 681.46, -23.92, 347.35, 1, math.random(8,12))
    elseif GetSpawnLocationID(NPC)==133773393 then
	MovementLoopAddLocation(NPC, 684, -24, 349.24, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 683.47, -24.29, 350.12, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 683.11, -23.88, 348.27, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 685.3, -24.08, 350.17, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 684.3, -24.46, 351.61, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 684.24, -24.31, 350.23, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 683.53, -24.31, 350.28, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 683.71, -23.94, 348.91, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 681.75, -24.3, 349.18, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, 685.94, -23.53, 349.18, 1, math.random(8,12))
end
end

