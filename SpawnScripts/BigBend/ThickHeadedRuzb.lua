--[[
	Script Name		: SpawnScripts/BigBend/Thick-HeadedRuzb.lua
	Script Purpose	: Thick-Headed Ruzb
	Script Author	: torsten
	Script Date		: 2022.07.12
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local ASubtleReminder = 5637
local GnomoreGnomesteaks = 5642

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetQuestStep(Spawn, ASubtleReminder) == 1 then
        Dialog4(NPC, Spawn)
    elseif GetQuestStep(Spawn, ASubtleReminder) == 3 then
        Dialog3(NPC, Spawn)
    elseif GetQuestStep(Spawn, GnomoreGnomesteaks) == 1 then
        Dialog5(NPC, Spawn)
    end 
    
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "", "Wut? NO BOTHER! Ruzb eat now!", "", 0, 0, Spawn, 15)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Wnkc JU RUMQXRe Uiqh nzh igiq", "", 0, 0, Spawn, 15)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1032.mp3", 0, 0, Spawn)
	elseif choice == 4 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1032.mp3", 0, 0, Spawn)
	elseif choice == 5 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1032.mp3", 0, 0, Spawn)
	end
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Wut? You want gnomesteak too? NO! Get yer own! This'n's mine!")
	Dialog.AddVoiceover("thick-headed_ruzb/fprt_hood1/thick_headed_ruzb001.mp3", 2457410040, 155354042)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Bad Ruzb! Not eat gnome!", "Dialog1")
	Dialog.AddOption("You shouldn't be eating that gnome.", "Dialog1")
	Dialog.Start()
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Wut? Why? Gnome taste sooooooooo gud! I wuves me some gnomesteak!")
	Dialog.AddVoiceover("thick-headed_ruzb/fprt_hood1/thick_headed_ruzb002.mp3", 3199427179, 3674341166)
	Dialog.AddLanguage(15)
	Dialog.AddOption("No! BAD! I get you sometin' ta eat instead!", "Dialog7")
	Dialog.AddOption("You know, if you eat the gnomes, the guards will come. And then you'll get no more gnome, ever again. I'll bring you something proper to chew on.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ruzb not so shure... but... ok... me trust.")
	Dialog.AddVoiceover("thick-headed_ruzb/fprt_hood1/thick_headed_ruzb003.mp3", 3847692344, 2888894649)
	Dialog.AddLanguage(15)
	Dialog.AddOption("I be right back. You stay here!")
	Dialog.AddOption("You'll enjoy this. Quite a special treat. Trust me.")
	Dialog.Start()
	SetStepComplete(Spawn, ASubtleReminder, 1)
end

--================

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Youz back! Wut you bring Ruzb? Something gud? Me hopes!")
	Dialog.AddVoiceover("thick-headed_ruzb/fprt_hood1/thick_headed_ruzb004.mp3", 1019593479, 1907245)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Yah! Gud dorf chunks! Fresh from Skagga!", "Dialog2")
	Dialog.AddOption("I brought you some of Skagga's best dwarf chunks.", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Huh... not so shure... taste like gnome?")
	Dialog.AddVoiceover("thick-headed_ruzb/fprt_hood1/thick_headed_ruzb005.mp3", 1199397367, 3596813361)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Better, BETTER! Dis three hunnerd prozent reel dorf!", "Dialog6")
	Dialog.AddOption("Oh, trust me Ruzb, you've never had anything like this before...")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ok, Ruzb try eatin' da dorfie chunks! Fank 'ou!")
	Dialog.AddVoiceover("thick-headed_ruzb/fprt_hood1/thick_headed_ruzb006.mp3", 2791874278, 2328425868)
	Dialog.AddLanguage(15)
	Dialog.AddOption("Munch, munch, munch! Eats up!")
	Dialog.AddOption("Enjoy!")
	Dialog.Start()
	SetStepComplete(Spawn, ASubtleReminder, 3)
end

--=============

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Da gnomie flesh, is nice n' fresh, so super gud! Meez only thot, to eat a lot, so super gud!")
	Dialog.AddVoiceover("thick-headed_ruzb/fprt_hood1/thick_headed_ruzb007.mp3", 4123176323, 2225348683)
	Dialog.AddLanguage(15)
	Dialog.AddOption("BAD, BAD, BAD! Me put youz down! NOT EAT DA GNOMES!")
	Dialog.AddOption("I'm sorry Ruzb, but this is the end of the line - we just can't have you eating the gnomes.")
	Dialog.Start()
	SetStepComplete(Spawn, GnomoreGnomesteaks, 1)
end


