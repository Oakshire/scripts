--[[
	Script Name		:	HucklethinGorsefoot.lua
	Script Purpose	:	Hucklethin Gorsefoot
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

	Dialog.AddDialog("By leaf and lake, it's another fine day in Antonica!")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1024.mp3", 0, 0)
	Dialog.AddOption("I have to agree!  Goodbye!")

	Dialog.Start()

	--[[	Say() from this NPC


			Orphaned PlayFlavors

	--]]

end