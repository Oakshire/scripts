--[[
	Script Name		: SpawnScripts/BeggarsCourt/ManiusGalla.lua
	Script Purpose	: Manius Galla
	Script Author	: torsten
	Script Date		: 2022.07.15
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local JoiningtheGang = 5656
local DonationsfromtheBanker = 5657

function spawn(NPC)
	ProvidesQuest(NPC, JoiningtheGang)
	ProvidesQuest(NPC, DonationsfromtheBanker)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if not HasQuest(Spawn, JoiningtheGang) and not HasCompletedQuest(Spawn, JoiningtheGang) then
	    Dialog1(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, JoiningtheGang) then
        if not HasQuest(Spawn, DonationsfromtheBanker) and not HasCompletedQuest(Spawn, DonationsfromtheBanker) then
            OfferQuest(NPC, Spawn, DonationsfromtheBanker)
        end
    end
    if GetQuestStep(Spawn, JoiningtheGang) == 2 then
        Dialog5(NPC, Spawn)
        SetStepComplete(Spawn, JoiningtheGang, 2)	
    end
  	if GetQuestStep(Spawn, DonationsfromtheBanker) == 2 then
        SetStepComplete(Spawn, DonationsfromtheBanker, 2)	
    end
    Dialog4(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Mind your own business. If you keep gawking, you'll be walking away with a limp. And that's only because I'm in a good mood today.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", 0, 0)
	Dialog.AddOption("I want to join your gang.", "Dialog7")
	Dialog.AddOption("I didn't see anything.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Did you hear that, boys? This runt wants to join our gang! HA HA HA HA! You couldn't fight your way out of a wet parchment bag let alone join us. HA HA HA! We keep people safe inside the city districts!  You're better off paying us for protection, runt.")
	Dialog.AddOption("Why don't you give me a test?", "Dialog3")
	Dialog.AddOption("I don't need to take this from you. Good bye.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A test, huh? Yeah ... hey, boys ... let's give this runt a bit of a test. Okay, here's your test: Go deeper in this place and find some of the lackeys who hang around the raiders. Kill some of them and maybe you can work for us.")
	Dialog.AddOption("Okay, I'll be back when they're dead.", "Dialog2")
	Dialog.Start()
	OfferQuest(NPC, Spawn, JoiningtheGang)
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Don't even bother coming back if they ain't!")
	Dialog.AddOption("Don't worry about it.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Mind your own business. If you keep gawking, you'll be walking away with a limp. And that's only because I'm in a good mood today.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", 0, 0)
	Dialog.AddOption("I didn't see anything.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Crispin already heard. Hpmh ... You got lucky, I guess. Either way, those Raiders won't bother our clients in the Court anymore. I don't know if I should let you join our gang ... let me think about it.")
	Dialog.AddOption("I'll check back.")
	Dialog.Start()
end

