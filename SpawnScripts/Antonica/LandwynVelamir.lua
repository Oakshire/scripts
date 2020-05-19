--[[
	Script Name		:	LandwynVelamir.lua
	Script Purpose	:	Landwyn Velamir
	Script Author	:	Jabantiz
	Script Date		:	08/29/2019
	Script Notes	:	Auto-Generated from a chat log using SpawnScriptDesigner
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Do you know love, my friend?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1034.mp3", 0, 0)
	Dialog.AddOption("It seems not as well as you.", "dlg_2")
	Dialog.AddOption("I have no time for love.")

	Dialog.Start()

	--[[	Say() from this NPC


			Orphaned PlayFlavors
				PlayFlavor(NPC, "", "I may have lost love, but I have grown as a person.", "", 1689589577, 4560189, Spawn)
				PlayFlavor(NPC, "", "Returning to me with information of love?", "", 1689589577, 4560189, Spawn)
				PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1034.mp3", "", "", 0, 0, Spawn)
				PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3", "", "", 0, 0, Spawn)
				PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1034.mp3", "", "", 0, 0, Spawn)
				PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1012.mp3", "", "", 0, 0, Spawn)
				PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1012.mp3", "", "", 0, 0, Spawn)
				PlayFlavor(NPC, "", "", "", 0, 0, Spawn)

	--]]

end

function dlg_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("How lucky I am. I have been holding this gift for my love for quite some time, but, alas, my duties keep me here. How sad it is that this flower shall wilt in the wait. Still, I am lucky, for her beauty shall never wane.")
	Dialog.AddVoiceover("", "", 0)
	Dialog.AddOption("Oh, what does she look like?", "dlg_3")
	Dialog.AddOption("Well, good luck to you. Bye.")

	Dialog.Start()
end

function dlg_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("How does one compare the beauty of a goddess using the words of mere mortals? Her hair is the color of the rising sun, containing the most glorious hues of the dawn. Her skin is akin to porcelain, flawless and immaculate. Her eyes are the green of a springtime meadow, with small bursts like the yellow of daisies in their center. Her lithe body is soft and curved like the waves of the sea. I only wish my eyes could witness her beauty once again.")
	Dialog.AddVoiceover("", "", 0)
	Dialog.AddOption("She sounds beautiful. Your flowers are wilted though. Let me gather some new ones for you.", "dlg_4")
	Dialog.AddOption("Good luck giving her the present. Bye.")

	Dialog.Start()
end

function dlg_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("That would be splendid! Last I saw, there were some beneath a shaded tree north of here.")
	Dialog.AddVoiceover("", "", 0)
	Dialog.AddOption("I will find them.")

	Dialog.Start()
end