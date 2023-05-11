--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothtacticianPath1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.11 04:05:22
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC, 6000, "waypoints")
    VoiceBox(NPC)
end

function VoiceBox(NPC)
 	local choice = MakeRandomInt(1,2)
 	if choice == 1 then    
    dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")
 	elseif choice == 2 then 
 	dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll3.lua")
    end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -57.53, -17.31, 63, 2, 0)
	MovementLoopAddLocation(NPC, -57.53, -17.31, 63, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -52.77, -17.03, 64.92, 2, 0)
	MovementLoopAddLocation(NPC, -53.97, -17.1, 66.24, 2, 0)
	MovementLoopAddLocation(NPC, -53.97, -17.1, 66.24, 2,  math.random(5,10))
	MovementLoopAddLocation(NPC, -62.35, -17.2, 65.14, 2, 0)
	MovementLoopAddLocation(NPC, -62.35, -17.2, 65.14, 2,  math.random(5,10))
	MovementLoopAddLocation(NPC, -54.12, -16.99, 62.1, 2, 0)
	MovementLoopAddLocation(NPC, -54.12, -16.99, 62.1, 2,  math.random(5,10))
	MovementLoopAddLocation(NPC, -63.01, -17.27, 63.26, 2, 0)
	MovementLoopAddLocation(NPC, -63.01, -17.27, 63.26, 2,  math.random(5,10))
	MovementLoopAddLocation(NPC, -55.26, -17.21, 64.09, 2, 0)
	MovementLoopAddLocation(NPC, -55.26, -17.21, 64.09, 2,  math.random(5,10))
	MovementLoopAddLocation(NPC, -53.26, -16.96, 62.06, 2, 0)
	MovementLoopAddLocation(NPC, -53.26, -16.96, 62.06, 2,  math.random(5,10))
	MovementLoopAddLocation(NPC, -62.2, -17.2, 66.17, 2, 0)
	MovementLoopAddLocation(NPC, -62.2, -17.2, 66.17, 2,  math.random(5,10))
	MovementLoopAddLocation(NPC, -55.38, -17.1, 65.19, 2, 0)
	MovementLoopAddLocation(NPC, -55.38, -17.1, 65.19, 2,  math.random(5,10))
end


