--[[
    Script Name    : SpawnScripts/ThunderingSteppes/QuintCerliusME.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 03:06:49
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
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,8)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1040.mp3", "Oh bother! What do you want? I am quite busy can't you see?", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1040.mp3", "By the way you are stalling, I would think you are working with these Pirates of Gunthak. ", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "I did not spend my time tracking down those crates to have some trotter come around and rummage through them. Be off!", "", 0, 0, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "Unless you are confessing to the plundering of Far Seas Trading Company cargo, please go away!", "", 0, 0, Spawn, 0)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "I can see pirate written all about your face. Look at those shifty eyes!", "", 0, 0, Spawn, 0)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "I am a very busy Merchant Examiner for the Far Seas Trading Company. I have no time for chit chat.", "", 0, 0, Spawn, 0)
	elseif choice == 7 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "Leave those crates alone or face the punishment of the Far Seas Trading Company. No one likes to be sentenced to the Hold of Prexus.", "", 0, 0, Spawn, 0)
	elseif choice == 8 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "Hands off those crates! That is property of the Far Seas Trading Company.", "", 0, 0, Spawn, 0)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I can see the curiosity in your expression. Reading faces is my business, you know? So what are you curious about?")
	Dialog.AddVoiceover("quint_m.e./steppes/quint_cerlius/quint003.mp3", 1774686373, 2145559568)
	Dialog.AddOption("I was actually curious about the crates with the funny symbols and no words.", "Dialog6")
	Dialog.AddOption("I am not curious about anything. Farewell. ")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I have tracked the Pirates of Gunthak down and found them operating in the Black Sea. Mariners have reported that they are selling our stolen goods to settlements there. If any trace of them exists, it lies on the beaches of the Feerrott.")
	Dialog.AddVoiceover("quint_m.e./steppes/quint_cerlius/quint008.mp3", 1774686373, 2145559568)
	Dialog.AddOption("Great! I am off to clear my name. Farewell.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I wish I could believe you, but the only way we could prove you wrong is if we found all the missing cargo... which just happens to be aboard a stolen ship called the Far Pelican.")
	Dialog.AddVoiceover("quint_m.e./steppes/quint_cerlius/quint006.mp3", 1774686373, 2145559568)
	Dialog.AddOption("Maybe I can find your lost cargo ship? ", "Dialog5")
	Dialog.AddOption("Wait here. I will be right back.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A-ha! Just what a dastardly pirate would say. You are indeed a pirate. It's time to take you to the brig for some painful interrogations. Umm... could you please place your wrists together for me?")
	Dialog.AddVoiceover("quint_m.e./steppes/quint_cerlius/quint005.mp3", 1774686373, 2145559568)
	Dialog.AddOption("Wait! I am not a pirate. I was just curious about the lack of words on the chest and the weird symbols.", "Dialog3")
	Dialog.AddOption("Wait here. I will be right back. Bye.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hmm. That sounds reasonable, but I must warn you, if you fail to bring back the ship and the cargo, we will hunt you down and toss you in the Hold of Prexus--the bottom of the sea, not the prison isle.")
	Dialog.AddVoiceover("quint_m.e./steppes/quint_cerlius/quint007.mp3", 1774686373, 2145559568)
	Dialog.AddOption("Very good! Just tell me where I can find a lead on the Far Pelican.", "Dialog2")
	Dialog.AddOption("Forget it. I don't want to clear my name.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh really? Why are you so interested in those crates? Ordinary people would just cross on by and not take another look, but you... I think you have something to do with the high seas raids of the Far Seas Trading Company cargo ships.")
	Dialog.AddVoiceover("quint_m.e./steppes/quint_cerlius/quint004.mp3", 1774686373, 2145559568)
	Dialog.AddOption("What? I am no pirate!", "Dialog4")
	Dialog.AddOption("I better end this conversation before I get arrested. Bye.")
	Dialog.Start()
end
