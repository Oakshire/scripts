--[[
	Script Name		:	KinamerGalemaul.lua
	Script Purpose	:	Kinamer Galemaul
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

	Dialog.AddDialog("Keep clear of the forge, my friend.  The metal is hot and my hammer swings where it will!")
	Dialog.AddVoiceover("voiceover/english/kinamer_galemaul/antonica/kinamergalemaul000.mp3", 165936049, 625468658)
	Dialog.AddOption("I think I'll play it safe and stay back here.  ")

	Dialog.Start()

	--[[	Say() from this NPC


			Orphaned PlayFlavors
				PlayFlavor(NPC, "voiceover/english/kinamer_galemaul/antonica/kinamergalemaul005.mp3", "", "", 4275576159, 2433123313, Spawn)
				PlayFlavor(NPC, "voiceover/english/kinamer_galemaul/antonica/kinamergalemaul001.mp3", "", "", 2027558019, 1718672799, Spawn)
				PlayFlavor(NPC, "voiceover/english/kinamer_galemaul/antonica/kinamergalemaul002.mp3", "", "", 1072576802, 3460847281, Spawn)
				PlayFlavor(NPC, "voiceover/english/kinamer_galemaul/antonica/kinamergalemaul003.mp3", "", "", 4028492463, 2669208994, Spawn)
				PlayFlavor(NPC, "voiceover/english/kinamer_galemaul/antonica/kinamergalemaul004.mp3", "", "", 2013410863, 3232485103, Spawn)

	--]]

end