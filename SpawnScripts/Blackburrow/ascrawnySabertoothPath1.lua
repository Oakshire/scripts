--[[
    Script Name    : SpawnScripts/Blackburrow/ascrawnySabertoothPath1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.02 02:05:10
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
	MovementLoopAddLocation(NPC, -1.89, 0.41, -14.64, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -3.7, 0.55, -17.5, 2, 0)
	MovementLoopAddLocation(NPC, -3.7, 0.55, -17.5, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 2.19, 0.22, -16.38, 2, 0)
	MovementLoopAddLocation(NPC, 2.19, 0.22, -16.38, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 3.92, 0, -15.93, 2, 0)
	MovementLoopAddLocation(NPC, 7.9, 0.41, -18.41, 2, 0)
	MovementLoopAddLocation(NPC, 7.9, 0.41, -18.41, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 0.24, 0.55, -19.47, 2, 0)
	MovementLoopAddLocation(NPC, 0.24, 0.55, -19.47, 2, math.random(5,10))
end

