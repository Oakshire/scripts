--[[
	Script Name		:	Arconicus.lua
	Script Purpose	:	Arconicus
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

	Dialog.AddDialog("What do you want? Please don't tell me you're another one of these country bumpkins who has never seen a mage before.")
	Dialog.AddOption("I won't. I'll just tell you goodbye.")

	Dialog.Start()

	--[[	Say() from this NPC


			Orphaned PlayFlavors
	--]]

end