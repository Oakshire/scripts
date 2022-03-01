--[[
	Script Name		:	SpawnScripts/FrostfangSea/good_book_feeding_the_guurok.lua
	Script Purpose	:	for the spawn "good_book_feeding_the_guurok.lua
	Script Author	:	theFoof
	Script Date		:	2013.5.30
	Script Notes	:	
--]]
local GreatShelf = 30

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function SpawnAccess(NPC, Spawn)
	if HasCompletedQuest(Spawn, GreatShelf) then
		AddSpawnAccess(NPC, Spawn)
	end
end