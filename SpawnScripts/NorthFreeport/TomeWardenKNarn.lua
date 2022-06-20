--[[
    Script Name    : SpawnScripts/NorthFreeport/TomeWardenKNarn.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 01:06:03
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
Dialog1(NPC, Spawn)end


function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Busy! Very busy! Books, tomes, scrolls and lexicons ... the knowledge never ends nor does my work. ")
	Dialog.AddVoiceover("voiceover/english/optional5/tome_warden_k_narn/fprt_north/tomewarden_knarn000.mp3", 1480684922, 4003003231)
	Dialog.AddOption("What is your task?", "Dialog3")
	Dialog.AddOption("I can see you are busy. Farewell.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("My task you ask? Look about! Walls and walls of knowledge ... many once lost and newly recovered by agents of the Academy. I am the Tome Warden. I must organize! Place this book here and that book there! It never ends! I am also the first to touch the lost tomes and the one to reward any offering of lost knowledge.   ")
	Dialog.AddVoiceover("voiceover/english/optional5/tome_warden_k_narn/fprt_north/tomewarden_knarn001.mp3", 2804877395, 1971245347)
	Dialog.AddOption("I will let you get back to work. ")
	Dialog.AddOption("I bring the 'Bootstrutter's Field Guide to the Commonlands'. ")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("My task you ask? Look about! Walls and walls of knowledge ... many once lost and newly recovered by agents of the Academy. I am the Tome Warden. I must organize! Place this book here and that book there! It never ends! I am also the first to touch the lost tomes and the one to reward any offering of lost knowledge.   ")
	Dialog.AddVoiceover("voiceover/english/optional5/tome_warden_k_narn/fprt_north/tomewarden_knarn001.mp3", 2804877395, 1971245347)
	Dialog.AddOption("I will let you get back to work. ")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Busy! Very busy! Books, tomes, scrolls and lexicons ... the knowledge never ends nor does my work. ")
	Dialog.AddVoiceover("voiceover/english/optional5/tome_warden_k_narn/fprt_north/tomewarden_knarn000.mp3", 1480684922, 4003003231)
	Dialog.AddOption("What is your task?", "Dialog2")
	Dialog.AddOption("I bring the 'Bootstrutter's Field Guide to the Commonlands'. ", "Dialog5")
	Dialog.AddOption("I can see you are busy. Farewell.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah! One of the field guides of the Hasten Bootstrutter! This shall make a fine addition to our library. The Academy of Arcane Science thanks you for your contribution. ")
	Dialog.AddVoiceover("voiceover/english/optional5/tome_warden_k_narn/fprt_north/tomewarden_knarn002.mp3", 3840236028, 2942457162)
	Dialog.AddOption("Thank you for the reward. ")
	Dialog.Start()
end
