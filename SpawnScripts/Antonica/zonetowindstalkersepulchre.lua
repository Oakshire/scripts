--[[
    Script Name    : SpawnScripts/Antonica/zonetowindstalkersepulchre.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.21 01:05:53
    Script Purpose : Hide access. Quest required:A Source of Malediction from Sentinel's Fate. Zone in to The False Sepulchre
                   : 
--]]

function spawn(NPC)
SetRequiredQuest(NPC,1,1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end