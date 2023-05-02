--[[
    Script Name    : SpawnScripts/Blackburrow/ascrawnySabertoothPath2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.02 02:05:09
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")

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
	MovementLoopAddLocation(NPC, 16.45, 0.43, -5.45, 2, 0)
	MovementLoopAddLocation(NPC, 16.45, 0.43, -5.45, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 16.47, 0.55, -18.02, 2, 0)
	MovementLoopAddLocation(NPC, 16.47, 0.55, -18.02, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 14.54, 0.44, -12.15, 2, 0)
	MovementLoopAddLocation(NPC, 14.54, 0.44, -12.15, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 14.33, 0.03, -4.11, 2, 0)
	MovementLoopAddLocation(NPC, 15.56, 0.39, -3.82, 2, 0)
	MovementLoopAddLocation(NPC, 17.57, 0.49, -8.76, 2, 0)
	MovementLoopAddLocation(NPC, 17.57, 0.49, -8.76, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 9.45, 0.54, -18.29, 2, 0)
	MovementLoopAddLocation(NPC, 9.45, 0.54, -18.29, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 16.67, 0.55, -11.64, 2, 0)
	MovementLoopAddLocation(NPC, 16.67, 0.55, -11.64, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 9.4, 0, -13.06, 2, 0)
	MovementLoopAddLocation(NPC, 9.4, 0, -13.06, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 13.41, 0, -5.9, 2, 0)
	MovementLoopAddLocation(NPC, 13.41, 0, -5.9, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 13.55, 0.02, -8.98, 2, 0)
	MovementLoopAddLocation(NPC, 13.55, 0.02, -8.98, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 16.32, 0.35, -7.83, 2, 0)

end


