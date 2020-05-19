--[[
	Script Name		:	DarmenSproutmore.lua
	Script Purpose	:	Darmen Sproutmore
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

	Dialog.AddDialog("Hail to you, adventurer! Mind your feet, and don't step on my dear little flowers! Just coming into bloom, they are.")
	Dialog.AddVoiceover("voiceover/english/darmen_sproutmore/antonica/darmensproutmore000.mp3", 2138797897, 3113209185)
	Dialog.AddOption("I must be off. Good day to you. ")

	Dialog.Start()

	--[[	Say() from this NPC


			Orphaned PlayFlavors
				PlayFlavor(NPC, "voiceover/english/darmen_sproutmore/antonica/darmensproutmore001.mp3", "", "", 3489573816, 2242982097, Spawn)
				PlayFlavor(NPC, "voiceover/english/darmen_sproutmore/antonica/darmensproutmore002.mp3", "", "", 2498400696, 3478793084, Spawn)
				PlayFlavor(NPC, "voiceover/english/darmen_sproutmore/antonica/darmensproutmore003.mp3", "", "", 1491369381, 2303497363, Spawn)
				PlayFlavor(NPC, "voiceover/english/darmen_sproutmore/antonica/darmensproutmore004.mp3", "", "", 3378309886, 1783566743, Spawn)

	--]]

end