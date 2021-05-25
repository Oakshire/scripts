--[[
    Script Name    : SpawnScripts/Commonlands/AndersBlackhammer.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.24 10:05:00
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/GenericVoiceOvers.lua"

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericHail(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end