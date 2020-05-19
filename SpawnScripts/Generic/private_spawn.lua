--[[
	Script Name		:	SpawnScripts/Generic/private_spawn.lua
	Script Purpose	:	only used to make a spawn private
	Script Author	:	theFoof
	Script Date		:	2013.6.12
	Script Notes	:	
--]]

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
end

function respawn(NPC)
	spawn(NPC)
end