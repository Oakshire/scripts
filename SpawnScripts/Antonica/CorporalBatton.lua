--[[
	Script Name		:	CorporalBatton.lua
	Script Purpose	:	Corporal Batton
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

	Dialog.AddDialog("I am afraid I must ask you to move along, citizen. This is a place of duty, not chatter.")
	Dialog.AddVoiceover("voiceover/english/corporal_batton/mudlib/vdl/quests/antonica/corporalbatton000.mp3", 3155813947, 2657899917)
	Dialog.AddOption("Excuse my interruption, guard.")

	Dialog.Start()

	--[[	Say() from this NPC


			Orphaned PlayFlavors
				PlayFlavor(NPC, "voiceover/english/corporal_batton/antonica/corporalbatton001.mp3", "", "", 77618874, 840266759, Spawn)

	--]]

end