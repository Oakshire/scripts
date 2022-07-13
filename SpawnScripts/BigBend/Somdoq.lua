--[[
	Script Name		: SpawnScripts/BigBend/Somdoq.lua
	Script Purpose	: Somdoq
	Script Author	: torsten
	Script Date		: 2022.07.12
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local TheFumeFireCeremony = 5635

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	if GetQuestStep(Spawn, TheFumeFireCeremony) == 2 then
	    Dialog3(NPC, Spawn)
    elseif GetQuestStep(Spawn, TheFumeFireCeremony) == 6 then
	    Dialog2(NPC, Spawn)
	else
	    Dialog1(NPC, Spawn)
    end
    RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1001.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1001.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1001.mp3", 0, 0, Spawn)
	end
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Why have you disturbed us?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/somdoq/fprt_hood01/newbie_path_ogre/somdoq001.mp3", 4145837033, 3275868519)
	Dialog.AddOption("Kroota sent me.", "Dialog4")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Then you have the fume and fire ceremonial items?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/somdoq/fprt_hood01/newbie_path_ogre/somdoq002.mp3", 4085903245, 1876466417)
	Dialog.AddOption("Yes.", "Dialog7")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good.  Then we will get the tribute underway.  Burn the incense.  Rip the flesh, and add it to the bones on the ground.  Smear the blood on your face, and smash the vase on the ground.  Tell me when you have done that.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/somdoq/fprt_hood01/newbie_path_ogre/somdoq003.mp3", 2087963690, 2077453026)
	Dialog.AddOption("I understand.")
	Dialog.Start()
	SetStepComplete(Spawn, TheFumeFireCeremony, 2)
end

---------

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("May this land reflect the mighty throne that is your plane.  Hear the glorious tumult that is the heat of battle, where 'nlightenment is gained through victorious combat.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/somdoq/fprt_hood01/newbie_path_ogre/somdoq005.mp3", 1278166954, 2389281517)
	Dialog.AddOption("[listen to ceremony]", "Dialog5")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Born of conflict we have come, and thrive in conflict we continue.  Mighty Rallos Zek, the victor of all wars, we survive to honor you with the defeat of the weak and inferior.  Wars in your name shake the very plane of this existence.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/somdoq/fprt_hood01/newbie_path_ogre/somdoq004.mp3", 2873790137, 2496264354)
	Dialog.AddOption("[listen to ceremony]", "Dialog8")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("May your feast of the fallen continue until the great conflict at the end of time.  Warlord, and father, these gifts we have presented to you.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/somdoq/fprt_hood01/newbie_path_ogre/somdoq007.mp3", 1249619017, 559988378)
	Dialog.AddOption("Glory to Rallos!", "Dialog9")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("May joyous battle, and constant strife litter the ground with corpses of the fallen, and the bones of the weak.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/somdoq/fprt_hood01/newbie_path_ogre/somdoq006.mp3", 487037760, 2070479487)
	Dialog.AddOption("[listen to ceremony]", "Dialog6")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You provided much for this ceremony.  Return to Kroota, and tell him that all went well.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/somdoq/fprt_hood01/newbie_path_ogre/somdoq008.mp3", 2581222973, 154740872)
	Dialog.AddOption("I will.")
	Dialog.Start()
	SetStepComplete(Spawn, TheFumeFireCeremony, 6)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("This does not interest you!  Begone.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/somdoq/fprt_hood01/newbie_path_ogre/somdoq009.mp3", 1003816206, 3011545312)
	Dialog.AddOption("I was just leaving.")
	Dialog.Start()
end

