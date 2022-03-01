--[[
	Script Name		:	GolMtun.lua
	Script Purpose	:	Gol M'Tun
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

	Dialog.AddDialog("Stand away, fool! Long live the Queen!")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1008.mp3", 0, 0)
	Dialog.AddOption("Ok.")

	Dialog.Start()

	--[[	Say() from this NPC


			Orphaned PlayFlavors
				PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1008.mp3", "", "", 0, 0, Spawn)
				PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1008.mp3", "", "", 0, 0, Spawn)
				PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1008.mp3", "", "", 0, 0, Spawn)
				PlayFlavor(NPC, "", "", "", 0, 0, Spawn)

	--]]

end