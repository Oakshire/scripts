--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothinvader4.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 05:09:18
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGoblin1.lua")

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
	MovementLoopAddLocation(NPC, 218.1, -3.82, 142.61, 2, 0)
	MovementLoopAddLocation(NPC, 215.39, -3.33, 141.86, 2, 0)
	MovementLoopAddLocation(NPC, 207.81, -3.3, 142.79, 2, 0)
	MovementLoopAddLocation(NPC, 192.7, -3.2, 147.92, 2, 0)
	MovementLoopAddLocation(NPC, 186.02, -3.2, 151.78, 2, 0)
	MovementLoopAddLocation(NPC, 178.44, -3.2, 158.11, 2, 0)
	MovementLoopAddLocation(NPC, 167.36, -3.2, 162.39, 4, 0)
	MovementLoopAddLocation(NPC, 149.8, -3.53, 159.31, 4, 0)
	MovementLoopAddLocation(NPC, 135.05, -3.7, 162.86, 4, 0)
	MovementLoopAddLocation(NPC, 110.67, -4, 167.78, 4, 0)
	MovementLoopAddLocation(NPC, 87.07, -4.55, 173.17, 4, 0)
	MovementLoopAddLocation(NPC, 79.43, -4.34, 171.82, 4, 0)
	MovementLoopAddLocation(NPC, 72.88, -4.3, 171.71, 4, 0)
	MovementLoopAddLocation(NPC, 68.66, -4.48, 176.15, 4, 0)
	MovementLoopAddLocation(NPC, 72.88, -4.3, 171.71, 4, 0)
	MovementLoopAddLocation(NPC, 68.66, -4.48, 176.15, 4, 0)
	MovementLoopAddLocation(NPC, 72.88, -4.3, 171.71, 4, 0)
	MovementLoopAddLocation(NPC, 68.66, -4.48, 176.15, 4, 300)
end


