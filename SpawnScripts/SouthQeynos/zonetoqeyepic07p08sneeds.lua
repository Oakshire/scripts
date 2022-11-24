--[[
    Script Name    : SpawnScripts/SouthQeynos/zonetoqeyepic07p08sneeds.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.23 01:11:29
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5776,1,0,0,1)
    SetRequiredQuest(NPC,5776,2,0,0,1)
    SetRequiredQuest(NPC,5776,3,0,0,1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end