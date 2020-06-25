--[[
	Script Name		:	AmuliusRamio.lua
	Script Purpose	:	Amulius Ramio
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

	Dialog.AddDialog("Quiet you!  Can't you see I'm trying to avoid being seen?  Get down here before an orc spots you!")
	Dialog.AddOption("My mistake, what are you doing here? (crouch)", "dlg_3")

	Dialog.Start()

	--[[	Say() from this NPC


			Orphaned PlayFlavors
	--]]

end

function dlg_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Get down and wait a moment, I think I hear an orc passing.")

	Dialog.Start()
end

function dlg_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Alright listen, the Overlord passed down orders to have me find out where these orcs have been staging their attacks from.  As you can see, this looks like an orc forward base if I ever saw one.  I don't have time to get back to Freeport to get some extra troops, so I'm going to have to ask for your help on this.  What say you?")
	Dialog.AddOption("Are you insane?  I can't do this, I must go.")

	Dialog.Start()
end