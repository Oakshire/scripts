--[[
    Script Name    : SpawnScripts/Antonica/akodiakHillside2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.28 08:02:11
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -1987.62, -23.9, 382.92, 2, 0)
	MovementLoopAddLocation(NPC, -1987.33, -21.3, 375.34, 2, 0)
	MovementLoopAddLocation(NPC, -1981.43, -17.22, 369.78, 2, 0)
	MovementLoopAddLocation(NPC, -1972.57, -13.9, 368.81, 2, 0)
	MovementLoopAddLocation(NPC, -1961.79, -11.1, 369.82, 2, 0)
	MovementLoopAddLocation(NPC, -1950.8, -8.34, 370.84, 2, 0)
	MovementLoopAddLocation(NPC, -1942.21, -6.46, 371.65, 2, 0)
	MovementLoopAddLocation(NPC, -1924.71, -2.64, 373.28, 2, 0)
	MovementLoopAddLocation(NPC, -1919.19, -1.79, 373.8, 2, 0)
	MovementLoopAddLocation(NPC, -1899.19, -1.51, 375.67, 2, 0)
	MovementLoopAddLocation(NPC, -1900.84, -1.71, 377.18, 2, 0)
	MovementLoopAddLocation(NPC, -1909.99, -2.36, 382.02, 2, 0)
	MovementLoopAddLocation(NPC, -1917.44, -4.91, 388.23, 2, 0)
	MovementLoopAddLocation(NPC, -1926.48, -8.17, 391.68, 2, 0)
	MovementLoopAddLocation(NPC, -1935.46, -10.42, 390.05, 2, 0)
	MovementLoopAddLocation(NPC, -1946.14, -11.9, 385.65, 2, 0)
	MovementLoopAddLocation(NPC, -1955.54, -13.05, 381.77, 2, 0)
	MovementLoopAddLocation(NPC, -1969.42, -15, 376.05, 2, 0)
	MovementLoopAddLocation(NPC, -1982.03, -17.76, 370.86, 2, 0)
	MovementLoopAddLocation(NPC, -1994.11, -20.47, 365.88, 2, 0)
	MovementLoopAddLocation(NPC, -2003.3, -22.25, 362.1, 2, 0)
	MovementLoopAddLocation(NPC, -2003.43, -22.13, 361.65, 2, 0)
	MovementLoopAddLocation(NPC, -1994.89, -20.02, 364.02, 2, 0)
	MovementLoopAddLocation(NPC, -1990.48, -21.87, 373.64, 2, 0)
	MovementLoopAddLocation(NPC, -1992.02, -26.29, 384.75, 2, 0)
	MovementLoopAddLocation(NPC, -1997.58, -30.89, 394, 2, 0)
	MovementLoopAddLocation(NPC, -1993.29, -29.01, 391.85, 2, 0)
	MovementLoopAddLocation(NPC, -1986.09, -25.29, 387.87, 2, 0)
	MovementLoopAddLocation(NPC, -1987.62, -23.9, 382.92, 2, 0)
end

