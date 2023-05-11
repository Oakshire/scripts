--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothoracleSleep.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.10 08:05:17
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SpawnSet(NPC, "visual_state", 228)
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

function attacked(NPC, Spawn)
	SpawnSet(NPC, "visual_state", 0)
end

function aggro(NPC, Spawn)
	SpawnSet(NPC, "visual_state", 0)
end