--[[
	Script Name		:	SpawnScripts/Nektropos1/GameRoomDoor.lua
	Script Purpose	:	
	Script Author	:	smash
	Script Date		:	1/26/2016
	Script Notes	:	
--]]

function spawn(NPC)
	SetRequiredQuest(NPC, 176, 2, 0, 1)
end

function respawn(NPC)
	spawn(NPC)
end