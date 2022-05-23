--[[
    Script Name    : SpawnScripts/QueensColony/gooddoortoepic.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.22 04:05:59
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetRequiredQuest(NPC, 164, 7)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end