--[[
    Script Name    : SpawnScripts/Blackburrow/astalwartSabertoothSCPath.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.11 07:05:21
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC, 6000, "waypoints")
    VoiceBox(NPC)
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
	MovementLoopAddLocation(NPC, -53.65, -18.46, 26.96, 2, 0)
	MovementLoopAddLocation(NPC, -52.05, -18.19, 28.32, 2, 0)
	MovementLoopAddLocation(NPC, -48.48, -17.95, 30.92, 2, 0)
	MovementLoopAddLocation(NPC, -45.56, -17.72, 30.72, 2, 0)
	MovementLoopAddLocation(NPC, -42.89, -17.63, 29.26, 2, 0)
	MovementLoopAddLocation(NPC, -42.34, -17.58, 25.67, 2, 0)
	MovementLoopAddLocation(NPC, -42.35, -17.57, 23.75, 2, 0)
	MovementLoopAddLocation(NPC, -40.47, -17.51, 21.89, 2, 0)
	MovementLoopAddLocation(NPC, -38.72, -17.13, 21.55, 2, 0)
	MovementLoopAddLocation(NPC, -37.23, -16.9, 21.47, 2, 0)
	MovementLoopAddLocation(NPC, -34.99, -16.59, 21.57, 2, 0)
	MovementLoopAddLocation(NPC, -34.03, -16.46, 22.17, 2, 0)
	MovementLoopAddLocation(NPC, -36.81, -16.81, 20.81, 2, 0)
	MovementLoopAddLocation(NPC, -38.98, -17.19, 21.25, 2, 0)
	MovementLoopAddLocation(NPC, -41.51, -17.52, 23.1, 2, 0)
	MovementLoopAddLocation(NPC, -44.82, -17.69, 30.42, 2, 0)
	MovementLoopAddLocation(NPC, -46.74, -17.83, 31.38, 2, 0)
	MovementLoopAddLocation(NPC, -49.05, -18.06, 30.97, 2, 0)
	MovementLoopAddLocation(NPC, -50.04, -18.1, 29.35, 2, 0)
end


