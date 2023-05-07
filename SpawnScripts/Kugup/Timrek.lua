--[[
	Script Name		: SpawnScripts/TheLostVillageofKugup/Timrek.lua
	Script Purpose	: Timrek
	Script Author	: neatz09
	Script Date		: 2023.05.06
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "", "I'm afraid my task will require your full attention. Come see me again when you're not preoccupied...", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Ahh, my mind is finally free to think about more important issues. Now, where was I?", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1024.mp3", 0, 0, Spawn)
	elseif choice == 4 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1024.mp3", 0, 0, Spawn)
	elseif choice == 5 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1024.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What order did they finish in the contest, from most to least cats eaten?")
	Dialog.AddOption("End.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("No no... that can't be it... hmm... If he ate three cats... no... no that's inconceivable.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1024.mp3", 0, 0)
	Dialog.AddOption("Excuse me?", "Dialog10")
	Dialog.AddOption("Uh, you're crazy!  ")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("No no... that can't be it... hmm... If he ate three cats... no... no that's inconceivable.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1024.mp3", 0, 0)
	Dialog.AddOption("Excuse me?", "Dialog10")
	Dialog.AddOption("Uh, you're crazy!  ")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hmmm, no, something seems wrong about it... ")
	Dialog.AddOption("Reset the puzzle.", "Dialog7")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The two brothers, Krunk and Brunk, ate the most and least cats.")
	Dialog.AddOption("Next...", "Dialog6")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Barzan ate less than Brunk, but more than Vrack.")
	Dialog.AddOption("Next...", "Dialog1")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Alright, it's reset.")
	Dialog.AddOption("Thanks.")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Five blundering Trolls, Kraznar, Vrack, Krunk, Brunk, and Barzan, had a cat eating contest...")
	Dialog.AddOption("Next...", "Dialog17")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("No no... that can't be it... hmm... If he ate three cats... no... no that's inconceivable.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1024.mp3", 0, 0)
	Dialog.AddOption("Excuse me?", "Dialog10")
	Dialog.AddOption("Uh, you're crazy!  ")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, I'm very sorry. It's just that I'm so preoccupied with this logic puzzle. Why, I haven't even been able to plan any new battle tactics in weeks! This is driving me crazy!")
	Dialog.AddOption("Battle Tactics? What are you talking about?", "Dialog16")
	Dialog.AddOption("Yeah... Crazy...")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It's a logic puzzle. If you'd like to take a crack at it, be my guest. I must warn you though, it isn't easy.")
	Dialog.AddOption("Sure, I'll take a look.", "Dialog15")
	Dialog.AddOption("No thanks, I enjoy my sanity.")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("So you've had a crack at it now, eh? What do you think?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1024.mp3", 0, 0)
	Dialog.AddOption("Can I hear the riddle again?")
	Dialog.AddOption("I think I have it!", "Dialog13")
	Dialog.AddOption("Reset the puzzle")
	Dialog.AddOption("Nevermind")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Let me see here... Yes, yes I believe you've done it! This is amazing! Thank you so much, now I can finally get back to work!")
	Dialog.AddOption("Glad I could help!")
	Dialog.Start()
end

function Dialog14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("So, you've had a crack at it now, eh? What do you think?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1024.mp3", 0, 0)
	Dialog.AddOption("Can I hear the riddle again?")
	Dialog.AddOption("I think I have it!")
	Dialog.AddOption("Reset the puzzle", "Dialog7")
	Dialog.AddOption("Nevermind")
	Dialog.Start()
end

function Dialog15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Alright! Here's the riddle. Once you hear it, go place the totems on the correct platforms. When you think you're finished, or you want to start over, come talk to me!")
	Dialog.AddOption("What's the riddle?")
	Dialog.AddOption("I don't need to hear the riddle.")
	Dialog.Start()
end

function Dialog16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, I'm Kugup's master tactician, but lately I've just been too busy with this puzzle to formulate any new stratagems. It's really becoming a problem!")
	Dialog.AddOption("What puzzle?", "Dialog11")
	Dialog.AddOption("That's intriguing, but I must be going.")
	Dialog.Start()
end

function Dialog17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Vrack ate more than at least two other Trolls.")
	Dialog.AddOption("Next...", "Dialog5")
	Dialog.Start()
end

function Dialog18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("So, you've had a crack at it now, eh? What do you think?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1024.mp3", 0, 0)
	Dialog.AddOption("Can I hear the riddle again?", "Dialog8")
	Dialog.AddOption("I think I have it!", "Dialog4")
	Dialog.AddOption("Reset the puzzle")
	Dialog.AddOption("Nevermind")
	Dialog.Start()
end

function Dialog19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("So, you've had a crack at it now, eh? What do you think?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1024.mp3", 0, 0)
	Dialog.AddOption("Can I hear the riddle again?")
	Dialog.AddOption("I think I have it!", "Dialog4")
	Dialog.AddOption("Reset the puzzle")
	Dialog.AddOption("Nevermind")
	Dialog.Start()
end

