--[[
	Script Name		:	SpawnScripts/FrostfangSea/valorian_bloom.lua
	Script Purpose	:	makes valorian blooms ghostly
	Script Author	:	theFoof
	Script Date		:	2013.9.16
	Script Notes	:	
--]]

function spawn(NPC)
	SpawnSet(NPC, "action_state", "6193")
	SpawnSet(NPC, "mood_state", "1902")
end

function respawn(NPC)
	spawn(NPC)
end