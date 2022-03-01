--[[
	Script Name		:	SoldierHomrie.lua
	Script Purpose	:	Soldier Homrie
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

	Dialog.AddDialog("Please, someone help me!  One of those ... blasted gnolls got me ... with a poison arrow.  Don't know how much time I have.")
	Dialog.AddVoiceover("voiceover/english/soldier_homrie/antonica/soldierhomrie000.mp3", 2620699462, 3560167645)
	Dialog.AddOption("This is more than I can handle")

	Dialog.Start()

	--[[	Say() from this NPC


			Orphaned PlayFlavors

	--]]

end