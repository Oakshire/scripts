--[[
	Script Name		: SpawnScripts/BigBend/Crattok.lua
	Script Purpose	: Crattok
	Script Author	: torsten
	Script Date		: 2022.07.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

local MuchAdoAboutRallos = 5634

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetQuestStep(Spawn, MuchAdoAboutRallos) == 6 then
        Dialog6(NPC, Spawn)
    elseif GetQuestStep(Spawn, MuchAdoAboutRallos) == 8 then
        Dialog9(NPC, Spawn)
    else
        Dialog10(NPC, Spawn)
    end 
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1031.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1031.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1031.mp3", 0, 0, Spawn)
	elseif choice == 4 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1055.mp3", 0, 0, Spawn)
	end
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You want elf skull?  It still have delicious ears! ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/crattok/fprt_hood01/newbie_path_ogre/crattok001.mp3", 3953050857, 4128026214)
	Dialog.AddOption("No.  I have been sent to get incense from you. ", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Cence what? ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/crattok/fprt_hood01/newbie_path_ogre/crattok002.mp3", 2315939514, 3958347700)
	Dialog.AddOption("Since now. ", "Dialog1")
	Dialog.Start()
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("... ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/crattok/fprt_hood01/newbie_path_ogre/crattok005.mp3", 3557141822, 3698658818)
	Dialog.AddOption("Smelly powder, with smoke. ", "Dialog4")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah!  Crattok have that!  You gots money for it? ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/crattok/fprt_hood01/newbie_path_ogre/crattok006.mp3", 1271671749, 4236549240)
	Dialog.AddOption("No.  Kroota did not mention paying for it. ", "Dialog7")
	Dialog.AddOption("Yes, but Kroota did not mention paying for it. ", "Dialog7")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I good business.  You no pay, you no get smoke!")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/crattok/fprt_hood01/newbie_path_ogre/crattok007.mp3", 1896222771, 4148742307)
	Dialog.AddOption("How much for the smoke powder? ", "Dialog8")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("One silver. ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/crattok/fprt_hood01/newbie_path_ogre/crattok008.mp3", 963455611, 3752670021)
	Dialog.AddOption("Fine.")
	Dialog.AddOption("I'll be back once I speak to Kroota.", "Dialog3")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hurry!  I's may sell powder to othersez.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/crattok/fprt_hood01/newbie_path_ogre/crattok013.mp3", 688670611, 2473738773)
	Dialog.AddOption("Do what you have to.")
	Dialog.Start()
	SetStepComplete(Spawn, MuchAdoAboutRallos, 6)
end

--=================

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You back for powder?  You have four silver? ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/crattok/fprt_hood01/newbie_path_ogre/crattok011.mp3", 3635361774, 3095148594)
	Dialog.AddOption("I have something worth more!  I brought you ten fresh rats for the smoke powder. ", "Dialog5")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Deal!  I's need'n good food. ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/crattok/fprt_hood01/newbie_path_ogre/crattok012.mp3", 1507687832, 2571146708)
	Dialog.AddOption("Nice doing business with you.")
	Dialog.Start()
	SetStepComplete(Spawn, MuchAdoAboutRallos, 8)
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You give hunting work for Crattok?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/crattok/fprt_hood01/newbie_path_ogre/crattok004.mp3", 816036049, 1788596289)
	Dialog.AddOption("I hunt.  No need to hire you.")
	Dialog.Start()
end

