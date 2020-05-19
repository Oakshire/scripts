--[[
	Script Name		:	SpawnScripts/Nektropos1/p19EliseSecretDoorScontz.lua
	Script Purpose	:	
	Script Author	:	smash
	Script Date		:	1/26/2016
	Script Notes	:	
--]]

require "SpawnScripts/Generic/PlayerHistory"

function spawn(NPC)
	SetRequiredHistory(NPC, HISTORY.NEK_CASTLE_SCONCE_ACCESS, 1)
end

function respawn(NPC)
	spawn(NPC)
end