--[[
    Script Name    : SpawnScripts/PeatBog/aravenousbogslug.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.05.18 04:05:34
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    waypoints(NPC)
    local Level = GetLevel(NPC)
    local level1 = 7
    local level2 = 8
    local difficulty1 = 5
    local hp1 = 65
    local power1 = 40
    local difficulty2 = 5
    local hp2 = 70
    local power2 = 45
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
    
    

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end


function waypoints(NPC)
	if GetSpawnLocationID(NPC)== 329545 or GetSpawnLocationID(NPC)== 329539 then
	MovementLoopAddLocation(NPC, 592.1, -32.95, 548.13, 5, 0)
	MovementLoopAddLocation(NPC, 597.46, -32.95, 554.31, 5, 0)
	MovementLoopAddLocation(NPC, 598.64, -32.96, 563, 5, 0)
	MovementLoopAddLocation(NPC, 599.12, -33.12, 569.7, 5, 0)
	MovementLoopAddLocation(NPC, 601.07, -33.27, 576.74, 5, 0)
	MovementLoopAddLocation(NPC, 604.52, -33.27, 580.54, 5, 0)
	MovementLoopAddLocation(NPC, 607.26, -33.32, 580.84, 5, 0)
	MovementLoopAddLocation(NPC, 606.56, -33.36, 578.67, 5, 0)
	MovementLoopAddLocation(NPC, 603.94, -33.5, 576.8, 5, 0)
	MovementLoopAddLocation(NPC, 601.65, -33.18, 569.46, 5, 0)
	MovementLoopAddLocation(NPC, 598.79, -32.99, 564.51, 5, 0)
	MovementLoopAddLocation(NPC, 598.06, -32.93, 553.16, 5, 0)
	elseif GetSpawnLocationID(NPC)== 329559 then

	MovementLoopAddLocation(NPC, 606.34, -33, 608.67, 5, 0)
	MovementLoopAddLocation(NPC, 603.76, -33.06, 595.82, 5, 0)
	MovementLoopAddLocation(NPC, 602.55, -33.05, 588.89, 5, 0)
	MovementLoopAddLocation(NPC, 606.23, -33.24, 583.48, 5, 0)
	MovementLoopAddLocation(NPC, 606.58, -33.24, 584.79, 5, 0)
	MovementLoopAddLocation(NPC, 603.22, -33.05, 588.7, 5, 0)
	MovementLoopAddLocation(NPC, 604.41, -33.15, 599.64, 5, 0)
	MovementLoopAddLocation(NPC, 607.39, -32.92, 611.66, 5, 0)
	MovementLoopAddLocation(NPC, 608.77, -32.86, 615.36, 5, 0)
	MovementLoopAddLocation(NPC, 610.13, -32.89, 615.77, 5, 0)
	MovementLoopAddLocation(NPC, 609.44, -32.95, 612.82, 5, 0)
	
	elseif GetSpawnLocationID(NPC)==329566 then
	MovementLoopAddLocation(NPC, 620.97, -32.85, 624.64, 5, 0)
	MovementLoopAddLocation(NPC, 616.6, -32.9, 621.72, 5, 0)
	MovementLoopAddLocation(NPC, 611.17, -32.82, 620.32, 5, 0)
	MovementLoopAddLocation(NPC, 612.74, -32.84, 615.37, 5, 0)
	MovementLoopAddLocation(NPC, 612.74, -32.83, 613.01, 5, 0)
	MovementLoopAddLocation(NPC, 610.07, -32.91, 609.14, 5, 0)
	MovementLoopAddLocation(NPC, 614.28, -32.75, 612.68, 5, 0)
	MovementLoopAddLocation(NPC, 610.01, -32.81, 618.14, 5, 0)
	MovementLoopAddLocation(NPC, 626.06, -32.77, 627.01, 5, 0)
	MovementLoopAddLocation(NPC, 630.14, -32.88, 628.08, 5, 0)
	MovementLoopAddLocation(NPC, 629.62, -32.98, 630.59, 5, 0)
	MovementLoopAddLocation(NPC, 624.21, -32.81, 626.24, 5, 0)
	
	elseif GetSpawnLocationID(NPC)== 329571 then
	MovementLoopAddLocation(NPC, 636, -33, 636.9, 5, 0)
	MovementLoopAddLocation(NPC, 642.67, -32.95, 638.6, 5, 0)
	MovementLoopAddLocation(NPC, 647.22, -33.06, 638.48, 5, 0)
	MovementLoopAddLocation(NPC, 648.82, -33.17, 639.97, 5, 0)
	MovementLoopAddLocation(NPC, 647.43, -33.25, 640.68, 5, 0)
	MovementLoopAddLocation(NPC, 642.01, -32.9, 639.77, 5, 0)
	MovementLoopAddLocation(NPC, 637.93, -32.82, 640.61, 5, 0)
	MovementLoopAddLocation(NPC, 631.85, -33.01, 635.66, 5, 0)
	MovementLoopAddLocation(NPC, 626.34, -32.81, 630.96, 5, 0)
	MovementLoopAddLocation(NPC, 619.85, -32.74, 628.56, 5, 0)
	MovementLoopAddLocation(NPC, 618.45, -32.85, 626.25, 5, 0)
	MovementLoopAddLocation(NPC, 619.81, -32.86, 626.69, 5, 0)
	MovementLoopAddLocation(NPC, 629.3, -33.02, 632.04, 5, 0)
end
end