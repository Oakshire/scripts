--[[
    Script Name    : SpawnScripts/Antonica/anenragedwolfHillside1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.28 09:02:37
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
	MovementLoopAddLocation(NPC, -1965.4, -28.59, 450.27, 2, 0)
	MovementLoopAddLocation(NPC, -1967.05, -29.19, 443.75, 2, 0)
	MovementLoopAddLocation(NPC, -1971.54, -31.03, 439.26, 2, 0)
	MovementLoopAddLocation(NPC, -1978.26, -32.22, 434.79, 2, 0)
	MovementLoopAddLocation(NPC, -1983.16, -33.7, 433.1, 2, 0)
	MovementLoopAddLocation(NPC, -1988.52, -34.88, 432.23, 2, 0)
	MovementLoopAddLocation(NPC, -1995, -37.07, 431.3, 2, 0)
	MovementLoopAddLocation(NPC, -2004.71, -39.95, 429.91, 2, 0)
	MovementLoopAddLocation(NPC, -2011.31, -40.74, 426.34, 2, 0)
	MovementLoopAddLocation(NPC, -2017.86, -42.12, 422.79, 2, 0)
	MovementLoopAddLocation(NPC, -2024.65, -43.85, 419.11, 2, 0)
	MovementLoopAddLocation(NPC, -2029.88, -44.36, 418.89, 2, 0)
	MovementLoopAddLocation(NPC, -2034.6, -44.7, 417.27, 2, 0)
	MovementLoopAddLocation(NPC, -2035.06, -44.81, 416.14, 2, 0)
	MovementLoopAddLocation(NPC, -2027.1, -44.18, 415.25, 2, 0)
	MovementLoopAddLocation(NPC, -2018.76, -41.18, 412.95, 2, 0)
	MovementLoopAddLocation(NPC, -2007.93, -36.33, 409.96, 2, 0)
	MovementLoopAddLocation(NPC, -1998.89, -33.27, 407.46, 2, 0)
	MovementLoopAddLocation(NPC, -1991.34, -30.88, 403.82, 2, 0)
	MovementLoopAddLocation(NPC, -1982.93, -28.05, 398.9, 2, 0)
	MovementLoopAddLocation(NPC, -1975.18, -23.59, 394.37, 2, 0)
	MovementLoopAddLocation(NPC, -1964.8, -17.49, 388.3, 2, 0)
	MovementLoopAddLocation(NPC, -1961.39, -15.31, 385.47, 2, 0)
	MovementLoopAddLocation(NPC, -1956.89, -13.7, 383.71, 2, 0)
	MovementLoopAddLocation(NPC, -1948.02, -11.05, 381.68, 2, 0)
	MovementLoopAddLocation(NPC, -1938.89, -8.23, 379.6, 2, 0)
	MovementLoopAddLocation(NPC, -1935.19, -7.36, 379.93, 2, 0)
	MovementLoopAddLocation(NPC, -1926.57, -5.99, 383.49, 2, 0)
	MovementLoopAddLocation(NPC, -1918.42, -4.89, 386.86, 2, 0)
	MovementLoopAddLocation(NPC, -1909.25, -3.6, 390.65, 2, 0)
	MovementLoopAddLocation(NPC, -1900.93, -2.89, 394.09, 2, 0)
	MovementLoopAddLocation(NPC, -1901.68, -3.07, 394.82, 2, 0)
	MovementLoopAddLocation(NPC, -1910.71, -4.46, 394.77, 2, 0)
	MovementLoopAddLocation(NPC, -1920.63, -6.96, 394.72, 2, 0)
	MovementLoopAddLocation(NPC, -1929.01, -10.42, 398.28, 2, 0)
	MovementLoopAddLocation(NPC, -1936.27, -13.42, 403.78, 2, 0)
	MovementLoopAddLocation(NPC, -1944.21, -16.99, 409.8, 2, 0)
	MovementLoopAddLocation(NPC, -1951.45, -20.19, 412.74, 2, 0)
	MovementLoopAddLocation(NPC, -1959.98, -24.13, 415.42, 2, 0)
	MovementLoopAddLocation(NPC, -1967.86, -27.22, 417.89, 2, 0)
	MovementLoopAddLocation(NPC, -1973.95, -29.02, 422.18, 2, 0)
	MovementLoopAddLocation(NPC, -1979.58, -31.8, 428.95, 2, 0)
	MovementLoopAddLocation(NPC, -1978.36, -32.04, 432.59, 2, 0)
	MovementLoopAddLocation(NPC, -1973.7, -31.52, 441.16, 2, 0)
	MovementLoopAddLocation(NPC, -1970.32, -29.56, 449.89, 2, 0)
	MovementLoopAddLocation(NPC, -1967.13, -27.59, 458.1, 2, 0)
	MovementLoopAddLocation(NPC, -1963.78, -26.24, 466.03, 2, 0)
	MovementLoopAddLocation(NPC, -1965.4, -28.59, 450.27, 2, 0)
end