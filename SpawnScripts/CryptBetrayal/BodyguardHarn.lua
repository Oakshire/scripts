--[[
    Script Name    : SpawnScripts/CryptBetrayal/BodyguardHarn.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.19 09:10:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "I hate coming down into these catacombs. But what are you going to do? Got to make money. If you are looking for work, Cryptkeeper Maglus might have something for you to do.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end