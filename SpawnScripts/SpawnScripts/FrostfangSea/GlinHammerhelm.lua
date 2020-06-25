--[[
	Script Name	: SpawnScripts/FrostfangSea/GlinHammerhelm.lua
	Script Purpose	: Glin Hammerhelm <Tradeskill Tutorial>
	Script Author	: theFoof
	Script Date	: 2013.10.20
	Script Notes	: see 
		              SpawnScripts/Generic/GenericTradeskillTutor.lua 
					  for function details
--]]

require"SpawnScripts/Generic/GenericTradeskillTutor"

function spawn(NPC)
	ProvidesTutorials(NPC)
end

function respawn(NPC)
	ProvidesTutorials(NPC)
end

function hailed(NPC, Spawn)
	CraftingTutorHail(NPC, Spawn)
end