--[[
	Script Name		:	CorporalPeckett.lua
	Script Purpose	:	Corporal Peckett
	Script Author	:	Jabantiz
	Script Date		:	08/27/2019
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

	Dialog.AddDialog("Hail, adventurer. I must warn you that Coldwind Point is not the safest place. Most of the garrison is on the march and the gnolls have been sighted nearby. I cannot guarantee your safety.")
	Dialog.AddVoiceover("voiceover/english/corporal_peckett/antonica/corporalpeckett000.mp3", 1322495237, 1823181494)
	Dialog.AddOption("I shall be fine. Thank you for the warning.")

	Dialog.Start()
end