--[[
	Script Name		: SpawnScripts/BigBend/Molg.lua
	Script Purpose	: Molg
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
	Dialog.AddDialog("Molg here!  Things for sale!  Buy!  Buy!  Buy!  Things!")
	Dialog.AddVoiceover("voiceover/english/merchant_molg/fprt_hood1/mer_molg.mp3", 3931295597, 1000874360)
	Dialog.AddOption("I must be going.")
	Dialog.AddOption("What kind of things?", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("All kinds of things!  Big things, little things, shiny things, even dull things!  But not so much the dull things.  Molg also buys things you know.  But Molg is a discriminating shopper.  Buy things!")
	Dialog.AddVoiceover("voiceover/english/merchant_molg/fprt_hood1/mer_molg000.mp3", 3100594732, 343855012)
	Dialog.AddOption("Ok.")
	Dialog.Start()
end

