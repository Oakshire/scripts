--[[
    Script Name    : SpawnScripts/Blackburrow/aburlySabertooth.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.11 01:07:00
    Script Purpose : a burly Sabertooth
                   : 
--]]

function spawn(NPC)
VoiceBox(NPC)
end

function VoiceBox(NPC)
local choice = math.random(1,2)
    if choice == 1 then
    dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")
    elseif choice == 2 then 
    dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll1.lua")
    end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end