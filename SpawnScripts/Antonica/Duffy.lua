--[[
	Script Name		:	Duffy.lua
	Script Purpose	:	Duffy
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

	Dialog.AddDialog("Take a look around. Never have you seen such finely crafted or wondrous artifacts for sale ... for such little coin!")
	Dialog.AddVoiceover("voiceover/english/merchant_duffy/antonica/merchantduffy000.mp3", 2930671172, 614117388)
	Dialog.AddOption("I'll just look about. ")

	Dialog.Start()

	--[[	Say() from this NPC


			Orphaned PlayFlavors
				PlayFlavor(NPC, "voiceover/english/merchant_duffy/antonica/merchantduffy001.mp3", "", "", 3538554208, 285621501, Spawn)

	--]]

end