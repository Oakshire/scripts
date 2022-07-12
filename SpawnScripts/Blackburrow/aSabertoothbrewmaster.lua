--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothbrewmaster.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.11 06:07:57
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
VoiceBox(NPC)
end

function VoiceBox(NPC)
 	local choice = MakeRandomInt(1,4)
 	if choice == 1 then    
    dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")
 	elseif choice == 2 then 
 	dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll1.lua")
 	elseif choice == 3 then 
 	dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll2.lua")
 	elseif choice == 4 then 
 	dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll3.lua")
    end
end


function respawn(NPC)
	spawn(NPC)
end