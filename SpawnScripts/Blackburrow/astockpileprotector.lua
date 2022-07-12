--[[
    Script Name    : SpawnScripts/Blackburrow/astockpileprotector.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.11 07:07:10
    Script Purpose : 
                   : 
--]]
function spawn(NPC)
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