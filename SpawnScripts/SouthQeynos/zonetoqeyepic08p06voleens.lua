--[[
    Script Name    : SpawnScripts/SouthQeynos/zonetoqeyepic08p06voleens.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.15 05:11:46
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5771,1,0,0,1)
    SetRequiredQuest(NPC,5771,2,0,0,1)
end



function respawn(NPC)
	spawn(NPC)
end