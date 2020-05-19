--[[
	Script Name	: SpawnScripts/OutpostOverlord/aTunarianhorsesentry.lua 
	Script Purpose	: Mount for Tunarian sentry (2780070)
	Script Author	: John Adams
	Script Date	: 2009.03.27
	Script Notes	: Figure out how to use one script for all Tunarian Horse Sentry NPCs
--]]

function spawn(NPC)
	SetMount(NPC, 6848)
	SetMountColor(NPC, 255, 255, 255, 255, 255, 255)
end

function respawn(NPC)
   spawn(NPC)
end
