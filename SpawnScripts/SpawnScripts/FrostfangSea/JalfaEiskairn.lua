--[[
	Script Name	: SpawnScripts/FrostfangSea/JalfaEiskairn.lua
	Script Purpose	: Jalfa Eiskairn <Crafting Trainer>
	Script Author	: theFoof
	Script Date	: 2013.10.20
	Script Notes	: See SpawnScripts/Generic/GenericCraftingTrainer for function details.
--]]

require"SpawnScripts/Generic/GenericCraftingTrainer"

function spawn(NPC)
end

function respawn(NPC)
end

function hailed(NPC, Spawn)
	CraftingTrainerHail(NPC, Spawn)
end