--[[
	Script Name		: SpawnScripts/BigBend/Barch.lua
	Script Purpose	: Barch
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
    if GetQuestStep(Spawn, MuchAdoAboutRallos) == 3 then
        Dialog1(NPC, Spawn)
    elseif GetQuestStep(Spawn, MuchAdoAboutRallos) == 5 then
        Dialog3(NPC, Spawn)
    else
        Dialog7(NPC, Spawn)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1002.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1002.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You lookin' for somethin'? ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/barch/fprt_hood01/newbie_path_ogre/barch001.mp3", 1301534840, 788449941)
	Dialog.AddOption("Yes.  I was sent to get blood worthy to be used in a tribute for Rallos Zek.", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Any blood spilled glorifies Rallos.  Bones break and creatures fall, all to the glory of our warlord!  What blood do you seek?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/barch/fprt_hood01/newbie_path_ogre/barch002.mp3", 3421238780, 2762015944)
	Dialog.AddOption("Kroota has sent me to get blood of the enemy.", "Dialog6")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You speak of a holy ceremony.  Fume and fire.  For that you need blood of an elf, in one of their own vases.  I can get the blood for you, if'n you get me the vase.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/barch/fprt_hood01/newbie_path_ogre/barch005.mp3", 2609357254, 3989114571)
	Dialog.AddOption("Where can I get an elven vase?", "Dialog5")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I know many items were taken from some Qeynosian prisoners.  They are being held in one of the Northern most rooms in the back alley. ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/barch/fprt_hood01/newbie_path_ogre/barch006.mp3", 1996512163, 3082047898)
	Dialog.AddOption("Thanks.  I'll see if I can find one.")
	Dialog.Start()
	SetStepComplete(Spawn, MuchAdoAboutRallos, 3)
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Is that an elvish vase?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/barch/fprt_hood01/newbie_path_ogre/barch008.mp3", 3451969542, 3225762730)
	Dialog.AddOption("I think so.  The writing is swirly and it has trees on it.", "Dialog8")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Heh.  That sounds elvish. ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/barch/fprt_hood01/newbie_path_ogre/barch009.mp3", 33593191, 3855299677)
	Dialog.AddOption("Good.", "Dialog4")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I have filled it with the blood you need for the ceremony. Glory to Rallos!")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/barch/fprt_hood01/newbie_path_ogre/barch010.mp3", 3797099812, 2066937388)
	Dialog.AddOption("And the victors of war!")
	Dialog.Start()
	SetStepComplete(Spawn, MuchAdoAboutRallos, 5)
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Barch strong and mighty hunter!  What about you?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/barch/fprt_hood01/newbie_path_ogre/barch004.mp3", 3256863943, 3547658719)
	Dialog.AddOption("I love to barsh!")
	Dialog.Start()
end

