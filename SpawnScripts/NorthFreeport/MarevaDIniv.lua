--[[
    Script Name    : SpawnScripts/NorthFreeport/MarevaDIniv.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 01:06:17
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
	Dialog.AddDialog("Interested in earning a little prestige with the Overlord?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", 0, 0)
	Dialog.AddOption("Of course.", "Dialog8")
	Dialog.AddOption("The Overlord will probably want someone with more experience.  Maybe later.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Wise choice.  I'm an archaeologist representing a coalition of groups that is interested in a recent...development.  I'm hiring some field workers.  While that sounds menial, trust me, the interest in this work is anything but.")
	Dialog.AddOption("Why is the Overlord interested in your work?", "Dialog12")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Interested in earning a little prestige with the Overlord?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1047.mp3", 0, 0)
	Dialog.AddOption("Of course.")
	Dialog.AddOption("The Overlord will probably want someone with more experience.  Maybe later.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Interested in earning a little prestige with the Overlord?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1047.mp3", 0, 0)
	Dialog.AddOption("Of course.", "Dialog2")
	Dialog.AddOption("No.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The penalty for non-compliance can be rather severe, so see that you keep your oath.  The roekillik have reappeared and they are apparently surveying several different mines across the lands, including the Commonlands and the Thundering Steppes.  You need to find out where they are concentrated, and what they are seeking.")
	Dialog.AddOption("The roekillik?", "Dialog7")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Have you discovered what they are doing?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1047.mp3", 0, 0)
	Dialog.AddOption("Not yet.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Some say they are ancient relations of the ratonga.  Who knows?  Our immediate concerns are: why they are here now, and what do they want?  Perhaps the answers to these questions will answer other questions as well.")
	Dialog.AddOption("I'll take a look around.")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Wise choice.  I'm an archaeologist representing a coalition of groups that is interested in a recent...development.  I'm hiring some field workers.  While that sounds menial, trust me, the interest in this work is anything but.")
	Dialog.AddOption("I'm not interested in menial labor.")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Failure does not interest me.  If you do not bring me information about these \"investors,\" I shall be forced to inform the Overlord of your lack of trustworthiness.")
	Dialog.AddOption("I'll find out about them -- because I want to, not because of your empty threats.")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Have you discovered what they are doing?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1007.mp3", 0, 0)
	Dialog.AddOption("They are under orders from some \"investors.\"", "Dialog13")
	Dialog.AddOption("Not yet.")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Have you discovered what they are doing?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1047.mp3", 0, 0)
	Dialog.AddOption("They are under orders from some \"investors.\"", "Dialog13")
	Dialog.AddOption("Not yet.")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("He is interested in many things.  Our research will likely solve a new mystery concerning some ancient events.  Before I can give you any details, I need your oath of compliance.")
	Dialog.AddOption("I will comply with your requests.", "Dialog5")
	Dialog.AddOption("I'll have to think about this.")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Who are the \"investors\" and what do they want?  Do I need to drag this information from you?")
	Dialog.AddOption("The ratmen were pretty elusive about their investors' identities.", "Dialog9")
	Dialog.Start()
end

