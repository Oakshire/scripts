--[[
    Script Name    : SpawnScripts/Antonica/agiantbearHillside1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.28 09:02:15
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 19
    local level2 = 20
    local difficulty1 = 6
    local hp1 = 1440
    local power1 = 425
    local difficulty2 = 6
    local hp2 = 1930
    local power2 = 475
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
    
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -2022.78, -29.98, 369.32, 2, 0)
	MovementLoopAddLocation(NPC, -2036.17, -31.31, 359.26, 2, 0)
	MovementLoopAddLocation(NPC, -2047.45, -31.78, 350.18, 2, 0)
	MovementLoopAddLocation(NPC, -2051.22, -30.37, 342.85, 2, 0)
	MovementLoopAddLocation(NPC, -2056.75, -28.4, 332.8, 2, 0)
	MovementLoopAddLocation(NPC, -2059.31, -27.18, 327.83, 2, 0)
	MovementLoopAddLocation(NPC, -2065.56, -24.23, 317.34, 2, 0)
	MovementLoopAddLocation(NPC, -2063.55, -24.26, 318.41, 2, 0)
	MovementLoopAddLocation(NPC, -2055.56, -22.55, 320.63, 2, 0)
	MovementLoopAddLocation(NPC, -2045.44, -18.75, 321.23, 2, 0)
	MovementLoopAddLocation(NPC, -2035.15, -15.2, 321.83, 2, 0)
	MovementLoopAddLocation(NPC, -2025.82, -12.56, 322.38, 2, 0)
	MovementLoopAddLocation(NPC, -2013.83, -9.84, 323.09, 2, 0)
	MovementLoopAddLocation(NPC, -2011.79, -8.26, 320.08, 2, 0)
	MovementLoopAddLocation(NPC, -2007.65, -5.46, 312.64, 2, 0)
	MovementLoopAddLocation(NPC, -2004.22, -4.3, 306.45, 2, 0)
	MovementLoopAddLocation(NPC, -2005.16, -4.54, 308.76, 2, 0)
	MovementLoopAddLocation(NPC, -2009.2, -7.27, 318.63, 2, 0)
	MovementLoopAddLocation(NPC, -2012.98, -11.49, 327.87, 2, 0)
	MovementLoopAddLocation(NPC, -2015.27, -12.83, 330.04, 2, 0)
	MovementLoopAddLocation(NPC, -2023.54, -16.96, 335.16, 2, 0)
	MovementLoopAddLocation(NPC, -2032.25, -22.38, 340.69, 2, 0)
	MovementLoopAddLocation(NPC, -2038.34, -27.47, 347.09, 2, 0)
	MovementLoopAddLocation(NPC, -2043.34, -31.4, 352.37, 2, 0)
	MovementLoopAddLocation(NPC, -2047.91, -34.15, 358.27, 2, 0)
	MovementLoopAddLocation(NPC, -2046.89, -34.11, 359.21, 2, 0)
	MovementLoopAddLocation(NPC, -2039.52, -33.07, 363, 2, 0)
	MovementLoopAddLocation(NPC, -2032.72, -32.52, 369.34, 2, 0)
	MovementLoopAddLocation(NPC, -2024.98, -32.54, 377.76, 2, 0)
	MovementLoopAddLocation(NPC, -2017.61, -33.1, 385.76, 2, 0)
	MovementLoopAddLocation(NPC, -2009.85, -32.54, 390.16, 2, 0)
	MovementLoopAddLocation(NPC, -2001.05, -31.51, 392.76, 2, 0)
	MovementLoopAddLocation(NPC, -1991.18, -29.64, 395.68, 2, 0)
	MovementLoopAddLocation(NPC, -1985.03, -28.58, 398.36, 2, 0)
	MovementLoopAddLocation(NPC, -1983.58, -27.86, 397.43, 2, 0)
	MovementLoopAddLocation(NPC, -1984.13, -25.05, 389.05, 2, 0)
	MovementLoopAddLocation(NPC, -1984.67, -22.17, 380.65, 2, 0)
	MovementLoopAddLocation(NPC, -1986.32, -20.18, 373.27, 2, 0)
	MovementLoopAddLocation(NPC, -1988.33, -18.56, 366.62, 2, 0)
	MovementLoopAddLocation(NPC, -1994.63, -20.35, 365.1, 2, 0)
	MovementLoopAddLocation(NPC, -2005.71, -24.71, 366.64, 2, 0)
	MovementLoopAddLocation(NPC, -2009.75, -26.76, 368.68, 2, 0)
	MovementLoopAddLocation(NPC, -2018.56, -30.23, 373.85, 2, 0)
	MovementLoopAddLocation(NPC, -2026.49, -33.02, 378.51, 2, 0)
	MovementLoopAddLocation(NPC, -2032.17, -34.85, 381.84, 2, 0)
	MovementLoopAddLocation(NPC, -2022.78, -29.98, 369.32, 2, 0)
end

