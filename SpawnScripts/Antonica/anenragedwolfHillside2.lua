--[[
    Script Name    : SpawnScripts/Antonica/anenragedwolfHillside2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.28 09:02:09
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
	MovementLoopAddLocation(NPC, -1997.57, -33.34, 410.53, 2, 0)
	MovementLoopAddLocation(NPC, -1991.38, -30.86, 403.65, 2, 0)
	MovementLoopAddLocation(NPC, -1985.2, -28.18, 396.78, 2, 0)
	MovementLoopAddLocation(NPC, -1978.76, -23.25, 389.63, 2, 0)
	MovementLoopAddLocation(NPC, -1972.85, -18.58, 383.07, 2, 0)
	MovementLoopAddLocation(NPC, -1968.94, -15.71, 378.72, 2, 0)
	MovementLoopAddLocation(NPC, -1962.56, -12.34, 373.03, 2, 0)
	MovementLoopAddLocation(NPC, -1956.03, -9.07, 368.37, 2, 0)
	MovementLoopAddLocation(NPC, -1949.03, -5.44, 363.38, 2, 0)
	MovementLoopAddLocation(NPC, -1941.36, -1.78, 357.92, 2, 0)
	MovementLoopAddLocation(NPC, -1940.96, -1.4, 357.14, 2, 0)
	MovementLoopAddLocation(NPC, -1948.98, -3.79, 358.16, 2, 0)
	MovementLoopAddLocation(NPC, -1955.5, -5.66, 358.99, 2, 0)
	MovementLoopAddLocation(NPC, -1962.52, -7.14, 357.54, 2, 0)
	MovementLoopAddLocation(NPC, -1970.08, -8.03, 354.36, 2, 0)
	MovementLoopAddLocation(NPC, -1975.58, -7.61, 349.38, 2, 0)
	MovementLoopAddLocation(NPC, -1979.82, -6.7, 342.3, 2, 0)
	MovementLoopAddLocation(NPC, -1984.11, -6.2, 335.16, 2, 0)
	MovementLoopAddLocation(NPC, -1988.51, -5.95, 327.83, 2, 0)
	MovementLoopAddLocation(NPC, -1992.4, -5.57, 321.35, 2, 0)
	MovementLoopAddLocation(NPC, -1995.02, -5.75, 319.91, 2, 0)
	MovementLoopAddLocation(NPC, -2001.9, -7.32, 323.84, 2, 0)
	MovementLoopAddLocation(NPC, -2008.15, -10.02, 327.41, 2, 0)
	MovementLoopAddLocation(NPC, -2014.8, -13.1, 331.21, 2, 0)
	MovementLoopAddLocation(NPC, -2014.91, -13.9, 333.46, 2, 0)
	MovementLoopAddLocation(NPC, -2015.23, -16.43, 340, 2, 0)
	MovementLoopAddLocation(NPC, -2015.62, -20.12, 347.91, 2, 0)
	MovementLoopAddLocation(NPC, -2016, -23.67, 355.79, 2, 0)
	MovementLoopAddLocation(NPC, -2017.34, -25.51, 359.31, 2, 0)
	MovementLoopAddLocation(NPC, -2021.22, -28.55, 365.53, 2, 0)
	MovementLoopAddLocation(NPC, -2026.08, -31.77, 373.32, 2, 0)
	MovementLoopAddLocation(NPC, -2030.13, -34.01, 379.82, 2, 0)
	MovementLoopAddLocation(NPC, -2031.6, -34.87, 382.17, 2, 0)
	MovementLoopAddLocation(NPC, -2032.43, -37.41, 387.33, 2, 0)
	MovementLoopAddLocation(NPC, -2032.78, -40.53, 395.33, 2, 0)
	MovementLoopAddLocation(NPC, -2033.26, -43.66, 406.01, 2, 0)
	MovementLoopAddLocation(NPC, -2031.64, -43.65, 406.85, 2, 0)
	MovementLoopAddLocation(NPC, -2023.72, -39.83, 402.18, 2, 0)
	MovementLoopAddLocation(NPC, -2016.34, -35.92, 397.82, 2, 0)
	MovementLoopAddLocation(NPC, -2007.4, -32.55, 392.54, 2, 0)
	MovementLoopAddLocation(NPC, -2002.24, -32.39, 397.17, 2, 0)
	MovementLoopAddLocation(NPC, -1997.57, -33.34, 410.53, 2, 0)
end


