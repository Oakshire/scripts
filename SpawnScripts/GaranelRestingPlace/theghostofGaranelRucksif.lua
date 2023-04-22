--[[
    Script Name    : SpawnScripts/GaranelRestingPlace/theghostofGaranelRucksif.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.22 12:04:02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function aggro(NPC, Spawn)
PlayFlavor(NPC, "",  "In your mind, this was a good  idea, right?", "", 1689589577, 4560189)
end

function death(NPC, Spawn)
PlayFlavor(NPC, "",  "I'll be back for you", "", 1689589577, 4560189)
end

function respawn(NPC)
	spawn(NPC)
end