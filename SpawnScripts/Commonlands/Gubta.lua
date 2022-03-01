--[[
    Script Name    : SpawnScripts/Commonlands/Gubta.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.24 10:05:48
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/GenericVoiceOvers"

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericHail(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end