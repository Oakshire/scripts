--[[
    Script Name    : SpawnScripts/SerpentSewer/RixTahReh.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.02 08:07:09
    Script Purpose : 
                   : 
--]]


require("SpawnScripts/Generic/GenericVoiceOvers")

function spawn(NPC)

end

function hailed(NPC, Spawn)
    GenericHail(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "",  "Hrmmf, hurry up and buy something or don't... I have to get back to the surface soon.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end