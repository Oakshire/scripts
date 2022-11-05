--[[
    Script Name    : SpawnScripts/WillowWood/zonetoqeyelddar.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.04 01:11:52
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5718,14,0,1,1)
    SetRequiredQuest(NPC,5719,14,0,1,1)
    SetRequiredQuest(NPC,5720,14,0,1,1)
    SetRequiredQuest(NPC,5721,14,0,1,1)
    SetRequiredQuest(NPC,5722,14,0,1,1)
    SetRequiredQuest(NPC,5723,14,0,1,1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end