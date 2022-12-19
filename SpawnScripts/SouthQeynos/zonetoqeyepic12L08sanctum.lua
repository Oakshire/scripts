--[[
    Script Name    : SpawnScripts/SouthQeynos/zonetoqeyepic12L08sanctum.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.18 04:12:18
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5780,1,0,0,1)
    SetRequiredQuest(NPC,5780,2,0,0,1)
    SetRequiredQuest(NPC,5780,3,0,0,1)
    SetRequiredQuest(NPC,5780,4,0,0,1)
    SetRequiredQuest(NPC,5780,5,0,0,1)
end


function respawn(NPC)
	spawn(NPC)
end