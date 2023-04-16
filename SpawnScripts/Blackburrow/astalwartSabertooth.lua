--[[
    Script Name    : SpawnScripts/Blackburrow/astalwartSabertooth.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.11 06:07:41
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

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