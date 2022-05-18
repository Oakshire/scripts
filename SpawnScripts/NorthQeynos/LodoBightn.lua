--[[
	Script Name		: SpawnScripts/QeynosCapitolDistrict/LodoBightn.lua
	Script Purpose	: Lodo Bightn
	Script Author	: Dorbin
	Script Date		: 2022.05.17
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"
local Dagger = 5558

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetQuestStepProgress(Spawn,Dagger) == 4 then
    Dialog4(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
else
    PlayFlavor(NPC,"","","glare",0,0,Spawn)
    Emote(NPC,"a stares at you with an evil grin, then goes back to his ale.")
 	FaceTarget(NPC, Spawn)
end
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1020.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, I'm afraid not.  Don't get that nasty sort out here.  Bunch of 'em out by Freeport I hear, though.")
	Dialog.AddVoiceover("voiceover/english/optional5/lodo_bightn/bf_halfling_lodobightn3_64.mp3", 4220445890, 889140163)
	Dialog.AddOption("This one would have come here from Freeport.", "Dialog5")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You see if you can do that.  Don't like that sort around here, we don't!")
	Dialog.AddVoiceover("voiceover/english/optional5/lodo_bightn/bf_halfling_lodobightn7_64.mp3", 1750948791, 3710883343)
	Dialog.AddOption("Take care.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Now that you mention it, I reckon so.  Rather brutish chap, I'll give him that.")
	Dialog.AddVoiceover("voiceover/english/optional5/lodo_bightn/bf_halfling_lodobightn5_64.mp3", 3738287380, 448534297)
	Dialog.AddOption("Did you see where he went?", "Dialog6")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What's this?  Who are you looking for?  An assassin?")
	Dialog.AddVoiceover("voiceover/english/optional5/lodo_bightn/bf_halfling_lodobightn2_64.mp3", 371157871, 3067060166)
	Dialog.AddOption("Yes, I'd heard one might have made his way out here.", "Dialog1")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("There was a strange sort, came into town for a couple days.  Bit on the shorter side.")
	Dialog.AddVoiceover("voiceover/english/optional5/lodo_bightn/bf_halfling_lodobightn4_64.mp3", 443287110, 1346680078)
	Dialog.AddOption("Did he have brown hair?", "Dialog3")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hmm ... Said he had some sort of business down in the crypt, I'd try checking there.")
	Dialog.AddVoiceover("voiceover/english/optional5/lodo_bightn/bf_halfling_lodobightn6_64.mp3", 450148933, 2742128407)
	Dialog.AddOption("Thanks, I'll see if I can catch him.", "Dialog2")
	Dialog.Start()
end

