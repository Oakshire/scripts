--[[
    Script Name    : SpawnScripts/SerpentSewer/GurthaTings.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.02 08:07:07
    Script Purpose : 
                   : 
--]]

require("SpawnScripts/Generic/GenericVoiceOvers")

function spawn(NPC)

end

function hailed(NPC, Spawn)
    GenericHail(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Hello there! Find any good things down here?  Gurtha is buying.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end