--[[
	Script Name		:	CaptainIsta.lua
	Script Purpose	:	Captain Ista
	Script Author	:	ParserGenerated (Replace this)
	Script Date		:	08/28/2019
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
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Hrmph! What? You expect me to assign a task to a weak little runt like yourself? Get Lost!")
	Dialog.AddOption("I will come back later then.")

	Dialog.Start()

	--[[	Say() from this NPC


			Orphaned PlayFlavors
	--]]

end