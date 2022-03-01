--[[
	Script Name		:	Quallium.lua
	Script Purpose	:	Quallium
	Script Author	:	Jabantiz
	Script Date		:	09/01/2019
	Script Notes	:	Auto-Generated from a chat log using SpawnScriptDesigner
--]]

require "SpawnScripts/Generic/DialogModule"

-- Quest ID's
local ONCE_UPON_AN_ISLE_DREARY = 479

-- Item ID's
local VISIONS_OF_COLDWIND_POINT = 15265

function spawn(NPC)
	ProvidesQuest(NPC, ONCE_UPON_AN_ISLE_DREARY)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Oh look at the mess I am in! My thoughts of wonderment have been stolen from me.")
	Dialog.AddVoiceover("voiceover/english/quallium/antonica/quallium000.mp3", 1763017248, 3571952103)
	Dialog.AddOption("How can someone steal your thoughts?", "dlg_2")
	Dialog.AddOptionRequirement(REQ_QUEST_ELIGIBLE, ONCE_UPON_AN_ISLE_DREARY)
	Dialog.AddOption("I have your scrolls.", "dlg_4")
	Dialog.AddOptionRequirement(REQ_QUEST_ON_STEP, ONCE_UPON_AN_ISLE_DREARY, 2)
	Dialog.AddOption("I don't speak to rathed people. Farewell.")

	Dialog.Start()

end

function dlg_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("They have my scrolls ... my poems! I was just sitting upon the isles, like I always do, searching for inspiration, when all of the sudden they appeared! I ran and now have lost my scrolls to the howling beasts.")
	Dialog.AddVoiceover("voiceover/english/quallium/antonica/quallium001.mp3", 3573977822, 664973830)
	Dialog.AddOption("Don't fret. I will go and claim your scrolls.", "OfferQuest1")
	Dialog.AddOption("You'll never see the scrolls again. Sorry.")

	Dialog.Start()
end

function OfferQuest1(NPC, Spawn)
	OfferQuest(NPC, Spawn, ONCE_UPON_AN_ISLE_DREARY)
end

function dlg_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("You saved me! These scrolls will take me from being a simple wordsmith to a legendary poet. You have read my work, have you not?")
	Dialog.AddVoiceover("voiceover/english/quallium/antonica/quallium003.mp3", 1726246143, 2173439902)
	Dialog.AddOption("Uh...yeah. Good stuff. Best ever.", "dlg_5")

	Dialog.Start()
end

function dlg_5(NPC, Spawn)
	
	SummonItem(Spawn, VISIONS_OF_COLDWIND_POINT, 1)
	
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Well of course you did! You should really visit the sights I wrote about. All four poems were based on actual images I spied from the isle. I am such a genius! Here, read for yourself!")
	Dialog.AddVoiceover("voiceover/english/quallium/antonica/quallium004.mp3", 2352960393, 543339399)
	Dialog.AddOption("Thanks for the literature my friend.")

	Dialog.Start()
end