--[[
	Script Name		:	SpawnScripts/FrostfangSea/aspiritward.lua
	Script Purpose	:	for despawning a spirit ward
	Script Author	:	theFoof
	Script Date		:	2013.5.28
	Script Notes	:	
--]]

function spawn(NPC)
	AddTimer(NPC, 10000, "depop")
end

function depop(NPC)
	Despawn(NPC)
end