--[[
	Script Name	: SpawnScripts/Baubbleshire/TawliWhiskwind.lua
	Script Purpose	: Tawli Whiskwind 
	Script Author	: Scatman
	Script Date	: 2009.08.12
	Script Notes	: Updated Dialog Module - 2022.08.22 Dorbin
--]]
require "SpawnScripts/Generic/DialogModule"

local QUEST_FROM_VIDA_NETTLEVILE = 310

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good day to you, deary!  I make the most wonderful brooms--strong bristles, stout handles, and quite stylish if you ask me.  Great for sweeping off your doorstep or scaring off little critters!")
	Dialog.AddVoiceover("voiceover/english/tawli_whiskwind/qey_village06/tawliwhiskwind000.mp3", 2721335951, 3874016215)
	PlayFlavor(NPC, "", "", "curtsey", 0, 0, Spawn)

	Dialog.AddOption("Vida Sweeps asked me to pick up a broom for her.  She wore her old one out.", "Dialog2")
	Dialog.AddOptionRequirement(REQ_QUEST_ON_STEP, QUEST_FROM_VIDA_NETTLEVILE , 1)

	Dialog.AddOption("I'm not really looking for a broom today, but thanks anyway.  ")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_FROM_VIDA_NETTLEVILE, 1)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, if anyone can wear out a broom, it's Vida. She sweeps so much you could eat off her spotless floor! Here's her new broom. I hope she uses it well.")
	Dialog.AddVoiceover("voiceover/english/tawli_whiskwind/qey_village06/tawliwhiskwind001.mp3", 1438734412, 3399833695)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Thank you.  I know she'll put it to work right away.")
	Dialog.Start()
end
