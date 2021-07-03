--[[
    Script Name    : SpawnScripts/ThievesWay/MikelaOsa.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.02 09:07:30
    Script Purpose : 
                   : 
--]]

require("SpawnScripts/Generic/GenericVoiceOvers")

function spawn(NPC)

end

function hailed(NPC, Spawn)
    GenericHail(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end