--[[
	Script Name	: SpawnScripts/Graveyard/atatteredpieceofpaper.lua
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	SetRequiredQuest(NPC, 233)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end