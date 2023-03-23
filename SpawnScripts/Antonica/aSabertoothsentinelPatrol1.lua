--[[
    Script Name    : SpawnScripts/Antonica/aSabertoothsentinelPatrol1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.23 04:03:32
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
	MovementLoopAddLocation(NPC, -1206.83, -2.9, 914.11, 2, 0)
	MovementLoopAddLocation(NPC, -1185.57, -2.82, 914.56, 2, 0)
	MovementLoopAddLocation(NPC, -1167.72, -3.81, 917.57, 2, 0)
	MovementLoopAddLocation(NPC, -1140.73, -5.66, 931.19, 2, 0)
	MovementLoopAddLocation(NPC, -1129.11, -6.15, 941.81, 2, 0)
	MovementLoopAddLocation(NPC, -1108.21, -6.16, 964.54, 2, 0)
	MovementLoopAddLocation(NPC, -1081.22, -6.16, 990.87, 2, 0)
	MovementLoopAddLocation(NPC, -1076.86, -6.67, 995.43, 2, 6)
	MovementLoopAddLocation(NPC, -1076.86, -6.67, 995.43, 2, 0)
	MovementLoopAddLocation(NPC, -1079.75, -6.21, 992.06, 2, 0)
	MovementLoopAddLocation(NPC, -1105.12, -6.16, 966.47, 2, 0)
	MovementLoopAddLocation(NPC, -1137.99, -5.79, 933.46, 2, 0)
	MovementLoopAddLocation(NPC, -1163.55, -4.12, 919.17, 2, 0)
	MovementLoopAddLocation(NPC, -1177.4, -3.19, 915.62, 2, 0)
	MovementLoopAddLocation(NPC, -1206.83, -2.9, 914.11, 2, 6)
end

