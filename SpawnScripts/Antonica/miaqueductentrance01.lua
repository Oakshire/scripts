--[[
    Script Name    : SpawnScripts/Antonica/miaqueductentrance01.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.21 03:05:59
    Script Purpose : Zones players into instance 'Qeynos Aqueduct Storage Facility 1B' using key-related quest from 'A Small Brass Key With A Tag'
                   : 
--]]

function spawn(NPC)
SetRequiredQuest(NPC,1,1)
end


function respawn(NPC)
	spawn(NPC)
end