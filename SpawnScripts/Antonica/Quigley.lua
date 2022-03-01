--[[
    Script Name    : SpawnScripts/Antonica/Quigley.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.27 06:06:23
    Script Purpose : 
                   : 
--]]

require("SpawnScripts/Generic/GenericVoiceOvers")

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericHail(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end