--[[
    Script Name    : SpawnScripts/ThunderingSteppes/EngineerXimmixWobblecog.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 02:06:01
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
	Dialog5(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1040.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes, yes, I'm quite busy now... can't talk.")
	Dialog.AddVoiceover("voiceover/english/optional1/engineer_ximmix_wobblecog/boat_06p_orcishwastes/ximmix_wobblecog021.mp3", 1653574618, 2676418452)
	Dialog.AddOption("Right.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, so you're the one she sent me, huh.  Well, I don't expect you to understand what I need; you need only to know where to find it.  Are you following all of this?")
	Dialog.AddVoiceover("voiceover/english/optional1/engineer_ximmix_wobblecog/boat_06p_orcishwastes/ximmix_wobblecog002.mp3", 1407342841, 3978194528)
	Dialog.AddOption("[continue]", "Dialog4")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("While the Captain and crew are the heart and soul of the ship, this gizmo is the central nervous system ... I guess that makes me the brain! How appropriate!")
	Dialog.AddVoiceover("voiceover/english/optional1/engineer_ximmix_wobblecog/boat_06p_orcishwastes/ximmix_wobblecog004.mp3", 2704379598, 3483304852)
	Dialog.AddOption("I'll get the parts for your gizmo.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Right!  No time to dawdle.  We had to stow the spare parts while we were in Qeynos; they're far too valuable and we couldn't risk having them seized.  You'll find what I need in the Crypt of Betrayal.  One of the wooden caskets has spare components for my interior incineration mechanism. ")
	Dialog.AddVoiceover("voiceover/english/optional1/engineer_ximmix_wobblecog/boat_06p_orcishwastes/ximmix_wobblecog003.mp3", 1151728246, 1037288133)
	Dialog.AddOption("[continue]", "Dialog3")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Don't bother me! I'm in the middle of a very involved and complex equation.  Oh, Blast!  Now you made me lose my place.  What do you want?  Huh?  Huh?")
	Dialog.AddVoiceover("voiceover/english/optional1/engineer_ximmix_wobblecog/boat_06p_orcishwastes/ximmix_wobblecog001.mp3", 80020159, 934525912)
	Dialog.AddOption("Your Captain sent me to help you.", "Dialog2")
	Dialog.Start()
end
