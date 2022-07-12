--[[
	Script Name		: SpawnScripts/BigBend/Zukogg.lua
	Script Purpose	: Zukogg
	Script Author	: torsten
	Script Date		: 2022.07.12
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local MuchAdoAboutRallos = 5634

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if HasQuest(Spawn, MuchAdoAboutRallos) then
        Dialog4(NPC, Spawn)
    else
        Dialog1(NPC, Spawn)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1001.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1001.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I am busy.  What do you need?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/zukogg/fprt_hood01/newbie_path_ogre/zukogg006.mp3", 1912937629, 3336545883)
	Dialog.AddOption("Nothin'.  I will go now.")
	Dialog.Start()
end

-- MuchAdoAboutRallos

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What's ya want'n? ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/zukogg/fprt_hood01/newbie_path_ogre/zukogg001.mp3", 410122769, 540260714)
	Dialog.AddOption("Kroota says you can help me get some flesh. ", "Dialog3")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I gots many skins.  You want armor skins?  Tent skins?  Bed skins? ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/zukogg/fprt_hood01/newbie_path_ogre/zukogg002.mp3", 2377084441, 3069496417)
	Dialog.AddOption("I need flesh to be used in a ceremony to bring glory to Rallos. ", "Dialog5")
	Dialog.Start()
end
function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Shhhhh.  You don't want others hearing of this! The flesh ya seek is ta symbolize the weak, inferior creatures who's fate is ta be defeated.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/zukogg/fprt_hood01/newbie_path_ogre/zukogg004.mp3", 171022403, 2413094131)
	Dialog.AddOption("Do you have such skins?", "Dialog6")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Rallos Zek is deserving of da most fresh skins.  My stock of skins is too old ta be worthy.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/zukogg/fprt_hood01/newbie_path_ogre/zukogg009.mp3", 3382292307, 1636661744)
	Dialog.AddOption("What should I do?", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Darby, da troll tailor has hunters bring in fresh kills.  Go grab a kill of something sentient from one of the many barrels around him.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/zukogg/fprt_hood01/newbie_path_ogre/zukogg003.mp3", 8857194, 3258354974)
	Dialog.AddOption("Will do.")
	Dialog.Start()
	if GetQuestStep(Spawn, MuchAdoAboutRallos) == 1 then
	    SetStepComplete(Spawn, MuchAdoAboutRallos, 1)
	end 
end

