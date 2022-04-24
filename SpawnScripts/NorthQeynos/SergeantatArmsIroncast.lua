--[[
	Script Name		: SpawnScripts/NorthQeynos/Sergeant-at-ArmsIroncast.lua
	Script Purpose	: Sergeant-at-Arms Ironcast
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/sergeant-at-arms_ironcast/qey_north/100_soc_dwarf_guard_officer_ironcast_no_181290a1.mp3", "Hail, citizen. I'm on duty and can't speak.  If you need the assistance of the guard,  let us know.", "", 904288338, 3551828428, Spawn, 0)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/sergeant-at-arms_ironcast/qey_north/100_soc_dwarf_guard_officer_ironcast_tasked_28d1905b.mp3", "Please return to me when you have completed your current task.", "", 1503240045, 3535420733, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/sergeant-at-arms_ironcast/qey_north/100_soc_dwarf_guard_officer_ironcast_no_181290a1.mp3", "Hail, citizen. I'm on duty and can't speak.  If you need the assistance of the guard,  let us know.", "", 904288338, 3551828428, Spawn, 0)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings, again. We're in serious trouble, friend, and the court needs your help.  This writ was hand delivered from the castle.  Take it and follow its instuctions to the letter.  Be very careful. I've a bad feeling about this one.")
	Dialog.AddVoiceover("voiceover/english/sergeant-at-arms_ironcast/qey_north/100_soc_dwarf_guard_officer_ironcast_hail_dcee4157.mp3", 2922366004, 1416171234)
	Dialog.AddOption("Okay.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Welcome, friend. Our thanks to you for your continued service to Qeynos.  I'm afraid the reports from the villages are not good. We've a situation we'd like you to look at.  Take this writ and exercise extreme caution. I'll speak to you again once you complete this task.")
	Dialog.AddVoiceover("voiceover/english/sergeant-at-arms_ironcast/qey_north/100_soc_dwarf_guard_officer_ironcast_greeting_9e29967c.mp3", 3325653132, 2631555784)
	Dialog.AddOption("Okay.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("...")
	Dialog.AddOption("I would like the writ: Earth and Water", "Dialog2")
	Dialog.AddOption("I would like the writ: The Gathering Shadows")
	Dialog.AddOption("I would like the writ: No One Sees Us")
	Dialog.AddOption("I would like the writ: Sinew vs. Steel")
	Dialog.AddOption("I will be going.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("...")
	Dialog.AddOption("I would like the writ: Muzzle the Carnivores", "Dialog1")
	Dialog.AddOption("I would like the writ: Blind to All Else")
	Dialog.AddOption("I would like the writ: Legacy of Xanuusus")
	Dialog.AddOption("I would like the writ: The Roar of the Colossal")
	Dialog.AddOption("I would like the writ: Underneath the Bridge")
	Dialog.AddOption("I will be going.")
	Dialog.Start()
end
