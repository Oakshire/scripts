--[[
	Script Name	: SpawnScripts/FrostfangSea/NarielAldaeme.lua
	Script Purpose	: Nariel Aldaeme <Portals Trainer>
	Script Author	: theFoof
	Script Date	: 2013.09.24
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "The blessings of Tunare can be felt all around us, even in this cold land!", "thanks", 1689589577, 4560189, Spawn)
end