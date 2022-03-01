--[[
	Script Name		:	GhilVentur.lua
	Script Purpose	:	Ghil Ventur
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

	Dialog.AddDialog("How can I help you?")
	Dialog.AddOption("It's nothing. Sorry to bother you.", "dlg_1")

	Dialog.Start()
end