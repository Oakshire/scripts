--[[
    Script Name    : SpawnScripts/Blackburrow/astalwartSabertoothPath1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.04 08:05:18
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    VoiceBox(NPC)
    AddTimer(NPC,6000, "waypoints")
end

function VoiceBox(NPC)
 	local choice = MakeRandomInt(1,3)
 	if choice == 1 then    
    dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")
 	elseif choice == 2 then 
 	dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll1.lua")
 	elseif choice == 3 then 
 	dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll2.lua")
    end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 4.84, -15.58, 65.48, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 3.71, -15.61, 63.68, 2, 0)
	MovementLoopAddLocation(NPC, 1.94, -15.68, 63.72, 2, 0)
	MovementLoopAddLocation(NPC, 1.94, -15.68, 63.72, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 7.8, -15.53, 65.49, 2, 0)
	MovementLoopAddLocation(NPC, 7.8, -15.53, 65.49, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 3.16, -15.64, 65.56, 2, 0)
	MovementLoopAddLocation(NPC, 3.16, -15.64, 65.56, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 4.15, -15.6, 66, 2, 0)
	MovementLoopAddLocation(NPC, 10.32, -15.5, 62.59, 2, 0)
	MovementLoopAddLocation(NPC, 10.32, -15.5, 62.59, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 4.41, -15.6, 68.22, 2, 0)
	MovementLoopAddLocation(NPC, 5.4, -15.57, 65.57, 2, 0)
	MovementLoopAddLocation(NPC, 5.4, -15.57, 65.57, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 7.47, -15.52, 62.6, 2, 0)
	MovementLoopAddLocation(NPC, 7.47, -15.52, 62.6, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 5.3, -15.58, 67.04, 2, 0)
	MovementLoopAddLocation(NPC, 5.3, -15.58, 67.04, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 7.45, -15.52, 60.67, 2, 0)
	MovementLoopAddLocation(NPC, 7.45, -15.52, 60.67, 2, math.random(5,10))
end

