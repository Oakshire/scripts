--[[
    Script Name    : SpawnScripts/antonica/LordBennet.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.26 07:06:23
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Welcome to the Keep of the Gnollslayers. We try to keep the roads and area clear from gnoll incursions.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end