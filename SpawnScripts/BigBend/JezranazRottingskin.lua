--[[
	Script Name		: SpawnScripts/BigBend/JezranazRottingskin.lua
	Script Purpose	: Jezranaz Rottingskin
	Script Author	: torsten
	Script Date		: 2022.07.13
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Curses, where is da doctor in the district?")
	Dialog.AddVoiceover("voiceover/english/jezranaz_rottingskin/fprt_hood01/jezranazrottingskin000.mp3", 304055100, 199645713)
	Dialog.AddOption("Uh, I don't know, but it sure looks like you need one.")
	Dialog.Start()
end

