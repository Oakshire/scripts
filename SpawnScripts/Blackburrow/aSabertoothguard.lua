--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothguard.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.11 06:07:48
    Script Purpose : 
                   : 
--]]
function spawn(NPC)
AddTimer(NPC,1000,"VoiceBox")
end

function VoiceBox(NPC)
    local choice = MakeRandomInt(1,4)
 	if choice == 1 then    
    dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")
 	elseif choice == 2 then 
 	dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll1.lua")
 	elseif choice == 3 then 
 	dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll2.lua")
    else
 	dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll3.lua")
    end
end

function respawn(NPC)
	spawn(NPC)
end