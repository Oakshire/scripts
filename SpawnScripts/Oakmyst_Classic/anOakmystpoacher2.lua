--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/anOakmystpoacher2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.20 04:10:51
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 5
    local level2 = 6
    local difficulty1 = 6
    local hp1 = 130
    local power1 = 65
    local difficulty2 = 6
    local hp2 = 150
    local power2 = 80
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
	MovementLoopAddLocation(NPC, 776.48, 13.35, -253.35, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 782.05, 13.35, -253.34, 2, 0)
	MovementLoopAddLocation(NPC, 794.6, 12.88, -261.49, 2, 0)
	MovementLoopAddLocation(NPC, 806.93, 11.29, -267.36, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 806.93, 11.29, -267.36, 2, 0)
	MovementLoopAddLocation(NPC, 791.15, 13.34, -258.58, 2, 0)
	MovementLoopAddLocation(NPC, 783.47, 13.35, -257.98, 2, 0)
	MovementLoopAddLocation(NPC, 781.23, 13.56, -264.38, 2, 0)
	MovementLoopAddLocation(NPC, 782.55, 13.64, -266.18, 2, 0)
	MovementLoopAddLocation(NPC, 784.87, 13.38, -266.82, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 784.87, 13.38, -266.82, 2, 0)
	MovementLoopAddLocation(NPC, 782.35, 13.5, -265, 2, 0)
	MovementLoopAddLocation(NPC, 781.39, 13.38, -261.62, 2, 0)
	MovementLoopAddLocation(NPC, 779.64, 13.35, -256.03, 2, 0)
	MovementLoopAddLocation(NPC, 771.01, 13.72, -254.64, 2, 0)
	MovementLoopAddLocation(NPC, 766.89, 13.91, -256.42, 2, 0)
	MovementLoopAddLocation(NPC, 767.43, 13.9, -255.91, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 767.43, 13.9, -255.91, 2, 0)
	MovementLoopAddLocation(NPC, 770.54, 13.58, -252.98, 2, 0)
	MovementLoopAddLocation(NPC, 770.32, 13.35, -246.83, 2, 0)
	MovementLoopAddLocation(NPC, 763.97, 13.35, -242, 2, 0)
	MovementLoopAddLocation(NPC, 758.54, 13.59, -242.75, 2, 0)
	MovementLoopAddLocation(NPC, 759.29, 13.54, -242.49, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 759.29, 13.54, -242.49, 2, 0)
	MovementLoopAddLocation(NPC, 760.75, 13.71, -245.9, 2, 0)
	MovementLoopAddLocation(NPC, 765.92, 13.48, -248.47, 2, 0)
	MovementLoopAddLocation(NPC, 782.06, 13.35, -249.98, 2, 0)
	MovementLoopAddLocation(NPC, 782.86, 13.94, -236.36, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 782.86, 13.94, -236.36, 2, 0)
	MovementLoopAddLocation(NPC, 782.55, 13.83, -237.75, 2, 0)
	MovementLoopAddLocation(NPC, 780.38, 13.72, -239.63, 2, 0)
	MovementLoopAddLocation(NPC, 773.98, 13.43, -240.95, 2, 0)
	MovementLoopAddLocation(NPC, 772.3, 13.36, -243, 2, 0)
	MovementLoopAddLocation(NPC, 772.79, 13.35, -246.74, 2, 0)
	MovementLoopAddLocation(NPC, 776.48, 13.35, -253.35, 2, 4)
end

