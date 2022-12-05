--[[
    Script Name    : SpawnScripts/SouthQeynos/zonetoqeyepic03village03ph.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.04 04:12:44
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5784,1,0,0,1)
end

function respawn(NPC)
	spawn(NPC)
end