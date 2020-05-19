--[[
	Script Name		:	Flores.lua
	Script Purpose	:	Flores
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

	Dialog.AddDialog("Step right up! My wares stand up to any found in the city!  Made by the finest Qeynosian crafters, they are!")
	Dialog.AddVoiceover("voiceover/english/merchant_flores/antonica/merchantflores000.mp3", 149465216, 3128258097)
	Dialog.AddOption("I don't need anything right now, thanks.")

	Dialog.Start()

	--[[	Say() from this NPC


			Orphaned PlayFlavors
				PlayFlavor(NPC, "voiceover/english/merchant_flores/antonica/merchantflores001.mp3", "", "", 4230827236, 573418930, Spawn)
				PlayFlavor(NPC, "voiceover/english/merchant_flores/antonica/merchantflores004.mp3", "", "", 2648431364, 4291369549, Spawn)
				PlayFlavor(NPC, "voiceover/english/merchant_flores/antonica/merchantflores002.mp3", "", "", 2413854703, 2789428713, Spawn)
				PlayFlavor(NPC, "voiceover/english/merchant_flores/antonica/merchantflores003.mp3", "", "", 741997082, 1076579882, Spawn)

	--]]

end