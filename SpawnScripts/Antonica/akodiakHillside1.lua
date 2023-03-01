--[[
    Script Name    : SpawnScripts/Antonica/akodiakHillside1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.28 08:02:08
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
	MovementLoopAddLocation(NPC, -1989.94, -34.37, 424.75, 2, 0)
	MovementLoopAddLocation(NPC, -1999.72, -33.89, 410.22, 2, 0)
	MovementLoopAddLocation(NPC, -2000.17, -31.92, 396.81, 2, 0)
	MovementLoopAddLocation(NPC, -2000.09, -29.05, 386.06, 2, 0)
	MovementLoopAddLocation(NPC, -1982.97, -25.96, 392.63, 2, 0)
	MovementLoopAddLocation(NPC, -1972.9, -26.61, 405.37, 2, 0)
	MovementLoopAddLocation(NPC, -1956.7, -23.73, 419.56, 2, 0)
	MovementLoopAddLocation(NPC, -1944.36, -20.08, 426.56, 2, 0)
	MovementLoopAddLocation(NPC, -1932.71, -15.64, 427.39, 2, 0)
	MovementLoopAddLocation(NPC, -1920.34, -11.89, 427.96, 2, 0)
	MovementLoopAddLocation(NPC, -1927.73, -13.43, 419.71, 2, 0)
	MovementLoopAddLocation(NPC, -1935.75, -15, 413.34, 2, 0)
	MovementLoopAddLocation(NPC, -1946.62, -17.69, 408.93, 2, 0)
	MovementLoopAddLocation(NPC, -1955.71, -20.64, 408.24, 2, 0)
	MovementLoopAddLocation(NPC, -1959.07, -24.42, 418.69, 2, 0)
	MovementLoopAddLocation(NPC, -1965.95, -27.56, 428.26, 2, 0)
	MovementLoopAddLocation(NPC, -1977.14, -31.26, 429.89, 2, 0)
	MovementLoopAddLocation(NPC, -1989.94, -34.37, 424.75, 2, 0)
end