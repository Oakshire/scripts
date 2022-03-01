--[[
	Script Name		:	Knight-CaptainAntillin.lua
	Script Purpose	:	Knight-Captain Antillin
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

	Dialog.AddDialog("I am Captain Antillin of the Coldwind Point Garrison. The roads ahead are infested with gnolls. No Antonican is safe. Turn back now.")
	Dialog.AddVoiceover("voiceover/english/knight-captain_antillin/antonica/captainantillin000.mp3", 135895240, 1341774897)
	Dialog.AddOption("I shall heed your warning, Captain.")

	Dialog.Start()

	--[[	Say() from this NPC


			Orphaned PlayFlavors
				PlayFlavor(NPC, "voiceover/english/knight-captain_antillin/antonica/captainantillin001.mp3", "", "", 841411724, 1572096111, Spawn)
				PlayFlavor(NPC, "voiceover/english/knight-captain_antillin/antonica/captainantillin002.mp3", "", "", 4242603088, 1602660198, Spawn)

	--]]

end