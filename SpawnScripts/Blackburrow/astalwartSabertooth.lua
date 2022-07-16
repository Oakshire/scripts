--[[
    Script Name    : SpawnScripts/Blackburrow/astalwartSabertooth.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.11 06:07:41
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 15
    local level2 = 16
    local difficulty1 = 7
    local hp1 = 1275
    local power1 = 400
    local difficulty2 = 7
    local hp2 = 1500
    local power2 = 425
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end
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