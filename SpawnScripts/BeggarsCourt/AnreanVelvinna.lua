--[[
	Script Name		: SpawnScripts/BeggarsCourt/AnreanVelvinna.lua
	Script Purpose	: Anrean Velvinna
	Script Author	: torsten
	Script Date		: 2022.07.18
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    Dialog4(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You took your sweet time getting back to me! But I see you didn't damage it too badly, so I suppose you deserve a reward. It's more than adequate compensation; I assure you. Good day.")
	Dialog.AddVoiceover("voiceover/english/optional5/anrean_velvinna/fprt_hood04/quests/anreanvelvinna/stolenchest_anreanvelvinna_x1_initial1.mp3", 624254019, 390284454)
	Dialog.AddOption("Thanks. Good bye.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, it's about time someone recovered it!  I was beginning to think that no one would face the Darkblades for me.")
	Dialog.AddVoiceover("voiceover/english/optional5/anrean_velvinna/fprt_hood04/quests/anreanvelvinna/stolenchest_anreanvelvinna_x1_initial.mp3", 3706216301, 2084378968)
	Dialog.AddOption("I was more than willing to slay the Darkblades on your behalf.")
	Dialog.AddOption("I've recovered your property.  My timing should not be in question.", "Dialog1")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You can almost see the Temple of War from up here. Some day I will walk through those halls.")
	Dialog.AddVoiceover("voiceover/english/optional5/anrean_velvinna/fprt_hood04/std_anrean_velvinna.mp3", 2790550041, 3876548447)
	Dialog.AddOption("Sure you will.")
	Dialog.AddOption("I recovered your stolen property.", "Dialog2")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You can almost see the Temple of War from up here. Some day I will walk through those halls.")
	Dialog.AddVoiceover("voiceover/english/optional5/anrean_velvinna/fprt_hood04/std_anrean_velvinna.mp3", 2790550041, 3876548447)
	Dialog.AddOption("Sure you will.")
	Dialog.Start()
end

