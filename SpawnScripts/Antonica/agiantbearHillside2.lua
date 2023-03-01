--[[
    Script Name    : SpawnScripts/Antonica/agiantbearHillside2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.28 09:02:25
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
	MovementLoopAddLocation(NPC, -2042.52, -26.38, 340.93, 2, 0)
	MovementLoopAddLocation(NPC, -2049.71, -23.28, 327.2, 2, 0)
	MovementLoopAddLocation(NPC, -2056.31, -19.98, 314.61, 2, 0)
	MovementLoopAddLocation(NPC, -2059.27, -14.75, 303.44, 2, 0)
	MovementLoopAddLocation(NPC, -2061.37, -9.75, 292.98, 2, 0)
	MovementLoopAddLocation(NPC, -2063.51, -6.97, 282.28, 2, 0)
	MovementLoopAddLocation(NPC, -2066.99, -4.96, 271.72, 2, 0)
	MovementLoopAddLocation(NPC, -2062.42, -3.73, 270.53, 2, 0)
	MovementLoopAddLocation(NPC, -2050.71, -0.96, 269.89, 2, 0)
	MovementLoopAddLocation(NPC, -2036.66, 1.86, 269.12, 2, 0)
	MovementLoopAddLocation(NPC, -2024.37, 3.17, 268.45, 2, 0)
	MovementLoopAddLocation(NPC, -2015.2, 2.85, 272.32, 2, 0)
	MovementLoopAddLocation(NPC, -2005.39, 1.34, 279.79, 2, 0)
	MovementLoopAddLocation(NPC, -1996.48, -0.21, 286.57, 2, 0)
	MovementLoopAddLocation(NPC, -1986.17, -1.69, 294.42, 2, 0)
	MovementLoopAddLocation(NPC, -1983.43, -2.29, 298.91, 2, 0)
	MovementLoopAddLocation(NPC, -1980.21, -3.11, 308.59, 2, 0)
	MovementLoopAddLocation(NPC, -1975.77, -3.31, 321.95, 2, 0)
	MovementLoopAddLocation(NPC, -1972.05, -3.2, 333.13, 2, 0)
	MovementLoopAddLocation(NPC, -1973.87, -3.98, 336.96, 2, 0)
	MovementLoopAddLocation(NPC, -1979.77, -7.02, 343.67, 2, 0)
	MovementLoopAddLocation(NPC, -1984.38, -9.84, 347.89, 2, 0)
	MovementLoopAddLocation(NPC, -1992, -15.42, 354.8, 2, 0)
	MovementLoopAddLocation(NPC, -1998.69, -20.17, 360.87, 2, 0)
	MovementLoopAddLocation(NPC, -1999.81, -19.82, 359.04, 2, 0)
	MovementLoopAddLocation(NPC, -2004.98, -17.92, 350.58, 2, 0)
	MovementLoopAddLocation(NPC, -2009.95, -15.94, 342.43, 2, 0)
	MovementLoopAddLocation(NPC, -2015.15, -14.12, 333.92, 2, 0)
	MovementLoopAddLocation(NPC, -2021.09, -12.16, 324.2, 2, 0)
	MovementLoopAddLocation(NPC, -2025.4, -10.41, 317.16, 2, 0)
	MovementLoopAddLocation(NPC, -2026.91, -10.92, 317.54, 2, 0)
	MovementLoopAddLocation(NPC, -2033.9, -15.01, 322.43, 2, 0)
	MovementLoopAddLocation(NPC, -2041.11, -19.89, 327.46, 2, 0)
	MovementLoopAddLocation(NPC, -2047.7, -24.57, 332.07, 2, 0)
	MovementLoopAddLocation(NPC, -2053.42, -28.58, 336.07, 2, 0)
	MovementLoopAddLocation(NPC, -2054.63, -28.93, 335.98, 2, 0)
	MovementLoopAddLocation(NPC, -2063.39, -31.17, 335.34, 2, 0)
	MovementLoopAddLocation(NPC, -2067.2, -32.8, 336.75, 2, 0)
	MovementLoopAddLocation(NPC, -2071.5, -36.23, 342.59, 2, 0)
	MovementLoopAddLocation(NPC, -2071.28, -36.98, 345.13, 2, 0)
	MovementLoopAddLocation(NPC, -2061.78, -35.65, 348.3, 2, 0)
	MovementLoopAddLocation(NPC, -2056.22, -34.54, 350.6, 2, 0)
	MovementLoopAddLocation(NPC, -2049.06, -31.44, 347.6, 2, 0)
	MovementLoopAddLocation(NPC, -2042.52, -26.38, 340.93, 2, 0)
end

