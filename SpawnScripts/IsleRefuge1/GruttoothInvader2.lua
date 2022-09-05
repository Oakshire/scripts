--[[
    Script Name    : SpawnScripts/IsleRefuge1/GruttoothInvader2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 02:09:41
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 167.67, -3.39, 176.37, 4, 5)
	MovementLoopAddLocation(NPC, 152, -3.14, 175.11, 4, 0)
	MovementLoopAddLocation(NPC, 131.69, -3.54, 170.66, 4, 0)
	MovementLoopAddLocation(NPC, 118.17, -3.8, 167.29, 4, 0)
	MovementLoopAddLocation(NPC, 87.58, -4.55, 174.28, 4, 0)
	MovementLoopAddLocation(NPC, 76.94, -4.47, 178.56, 4, 0)
	MovementLoopAddLocation(NPC, 73.16, -4.5, 177.48, 4, 0)
	MovementLoopAddLocation(NPC, 72.77, -4.3, 170.65, 2, 0)
	MovementLoopAddLocation(NPC, 69.72, -4.49, 177.25, 2, 0)
	MovementLoopAddLocation(NPC, 70.63, -4.29, 171.24, 2, 0)
	MovementLoopAddLocation(NPC, 69.72, -4.49, 177.25, 2, 0)
	MovementLoopAddLocation(NPC, 70.63, -4.29, 171.24, 2, 0)
	MovementLoopAddLocation(NPC, 69.72, -4.49, 177.25, 2, 0)
	MovementLoopAddLocation(NPC, 70.63, -4.29, 171.24, 2, 300)
end
