--[[
	Script Name		:	SoldierPellenos.lua
	Script Purpose	:	Soldier Pellenos
	Script Author	:	Jabantiz
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
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Hello there!  Come for tea?  I'm sorry, but I'm completely out of sugar!  Ask the gnolls; they killed everyone here.  Yes, everyone ... but me.  And now I don't know where the teapot is.  But there's no sugar, so it doesn't matter.  Hee hee!")
	Dialog.AddOption("Goodbye.")

	Dialog.Start()

	--[[	Say() from this NPC


			Orphaned PlayFlavors
	--]]

end