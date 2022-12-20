--[[
    Script Name    : SpawnScripts/NorthQeynos/zonetoqeyepic01intp19cache.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.19 03:12:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5791,1,0,0,1)
    SetRequiredQuest(NPC,5791,2,0,0,1)
    SetRequiredQuest(NPC,5791,3,0,0,1)
end



function respawn(NPC)
	spawn(NPC)
end