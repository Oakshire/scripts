--[[
	Script Name		:	HarbormasterLarra.lua
	Script Purpose	:	Harbormaster Larra
	Script Author	:	ParserGenerated (Replace this)
	Script Date		:	08/29/2019
	Script Notes	:	Auto-Generated from a chat log using SpawnScriptDesigner
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	Say(NPC, "The Maiden's Grace is currently in Kylong Plains.", Spawn)
end