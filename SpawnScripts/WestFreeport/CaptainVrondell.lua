--[[
    Script Name    : SpawnScripts/WestFreeport/CaptainVrondell.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 07:10:49
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
Dialog2(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You dare to approach a militia captain without being summoned? State your business or move along!")
	Dialog.AddVoiceover("voiceover/english/optional5/captain_vrondell/fprt_west/quests/captain_vrondell000.mp3", 1599544138, 213130892)
	Dialog.AddOption("Mercy great, captain. Forgive my foolish actions.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You dare to approach a militia captain without being summoned? State your business or move along!")
	Dialog.AddVoiceover("voiceover/english/optional5/captain_vrondell/fprt_west/quests/captain_vrondell000.mp3", 1599544138, 213130892)
	Dialog.AddOption("I've come to collect on the dervish sash bounty. ", "Dialog5")
	Dialog.AddOption("Mercy great, captain. Forgive my foolish actions.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The dervish cutthroats are comprised of bloodthirsty bandits bound to no law. They take any man or beast capable of slitting a throat. ")
	Dialog.AddVoiceover("voiceover/english/optional5/captain_vrondell/fprt_west/quests/captain_vrondell002.mp3", 2554848783, 139223205)
	Dialog.AddOption("How can such a band of unruly thugs be so organized?", "Dialog4")
	Dialog.AddOption("I don't need to hear any more. Thank you captain. ")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("They say they listen to one man only, their leader, a mysterious dark elf rogue known only as the Highwayman. This elf has enough power and charisma to charm any lawless scoundrel.")
	Dialog.AddVoiceover("voiceover/english/optional5/captain_vrondell/fprt_west/quests/captain_vrondell003.mp3", 2296158661, 471899834)
	Dialog.AddOption("Thank you for the information, captain.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well done, citizen.  The dervish cutthroats have been profiting from our city without the penalty of taxes or loyalty to the Overlord for far too long. These sashes can be used to infiltrate their ranks.")
	Dialog.AddVoiceover("voiceover/english/optional5/captain_vrondell/fprt_west/quests/captain_vrondell001.mp3", 578489990, 3054257797)
	Dialog.AddOption("Who are these bandits? ", "Dialog3")
	Dialog.AddOption("Killing those road leeches was my pleasure!")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Your contribution is one of duty and obligation and does not merit compensation. However, as we understand your need for supplies and repairs to remain a productive member of society, I reward you your bounty.")
	Dialog.AddVoiceover("voiceover/english/optional5/captain_vrondell/fprt_west/quests/captain_vrondell004.mp3", 1201882587, 2385389190)
	Dialog.AddOption("The spilling of orcish blood is always a privilege.")
	Dialog.AddOption("I could never forget my loyalty to the Overlord.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You dare to approach a militia captain without being summoned? State your business or move along!")
	Dialog.AddVoiceover("voiceover/english/optional5/captain_vrondell/fprt_west/quests/captain_vrondell000.mp3", 1599544138, 213130892)
	Dialog.AddOption("I've come to collect on the Bloodskull earring bounty.", "Dialog6")
	Dialog.AddOption("Mercy great, captain. Forgive my foolish actions.")
	Dialog.Start()
end

