--[[
    Script Name    : SpawnScripts/Commonlands/Jaharin.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.15 09:03:34
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Yes?...", "glare", 1689589577, 4560189)
end

function respawn(NPC)
	spawn(NPC)
end

