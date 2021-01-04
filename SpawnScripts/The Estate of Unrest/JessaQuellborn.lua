--[[
	Script Name		:	JessaQuellborn.lua
	Script Purpose	:	Jessa Quellborn
	Script Author	:	ParserGenerated Neatz09
	Script Date		:	01/01/2021
	Script Notes	:	Auto-Generated from a chat log using SpawnScriptDesigner
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
PlayAnimation(NPC, 1563)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("To gain entry to the foyer you must disable the locking mechanism holding the doors closed.  Use the levers in the towers at the same time to release the locks.")
	Dialog.AddOption("Thank you.", "dlg_1")
	Dialog.AddOption("We seem to have misplaced an important item from the house.  Have you seen it?", "dlg_2")

	Dialog.Start()

	--[[	Say() from this NPC


			Orphaned PlayFlavors
	--]]

end

function dlg_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("That would be most unfortunate.  However, I may have found what you are looking for.  You may check inside this chest.  I hope what you seek is inside.")
	Dialog.AddOption("Thank you, Lady Jessa.", "dlg_1")

	Dialog.Start()
end