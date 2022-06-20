--[[
    Script Name    : SpawnScripts/NorthFreeport/AulusCrispian.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 12:06:37
    Script Purpose : 
                   : 
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
	Dialog.AddDialog("Welcome to Torlig's Herbs and Potions.  I sell many magicial reagents and herbs.  But, I warn you, you must possess amazing skill to handle them properly.")
	Dialog.AddVoiceover("voiceover/english/alchemist_aulus_crispian/fprt_north/mer_auluscrispian.mp3", 3874372728, 2977782311)
	Dialog.AddOption("These herbs are not my cup of tea.  I think I will look elsewhere.")
	Dialog.AddOption("Do you know how to handle them properly?", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "","", "scold", 0, 0, Spawn)
    Dialog.AddDialog("Of course I do.  I'm very knowledgeable in the ways of magic.  Why, if it wasn't for those instructors at the Academy denying my admission, I'd be on my way to becoming a famous arch mage! That fire was not my fault!")
	Dialog.AddVoiceover("voiceover/english/alchemist_aulus_crispian/fprt_north/mer_auluscrispian000.mp3", 2154034769, 640127952)
	Dialog.AddOption("Okay.")
	Dialog.Start()
end


