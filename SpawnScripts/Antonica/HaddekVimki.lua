--[[
	Script Name		:	HaddekVimki.lua
	Script Purpose	:	Haddek Vimki
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

	Dialog.AddDialog("So, then I said, \"That's what the Gnome is for!\"  Wraahaahaa! Huh? What? If you're goin' to come over here and badger me, why don't you make yourself useful?")
	Dialog.AddOption("Sure, what do you need from me?", "dlg_2")
	Dialog.AddOption("Why don't you make yourself useful?!")

	Dialog.Start()

	--[[	Say() from this NPC


			Orphaned PlayFlavors
				PlayFlavor(NPC, "", "Hruh? What? I thought I told you what I wanted from you. If you're not going to take care of it I'm going to have old Aroof here take care of... Well... it don't look like he is going to be taking care of much... but when I tell him tomorrow, he will be awful angry!", "", 1689589577, 4560189, Spawn)
				PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1060.mp3", "", "", 0, 0, Spawn)
				PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1060.mp3", "", "", 0, 0, Spawn)
				PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1060.mp3", "", "", 0, 0, Spawn)
				PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
				PlayFlavor(NPC, "", "", "", 0, 0, Spawn)

	--]]

end

function dlg_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Ahhh, Aroof... He's a good chap, but he's about as smart as a trog. Me an' the big guy here are in the middle of something. What do you want? ")
	Dialog.AddVoiceover("", "", 0)
	Dialog.AddOption("I'm looking for some work.", "dlg_3")
	Dialog.AddOption("I think I'll be going now.")

	Dialog.Start()
end

function dlg_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Ya see, twinkletoes over here has had quite a bit to drink. The big oaf isn't as coordinated as the barkeep would like him to be. Seems last time I sent him up to get us another round, he tripped over a ratonga sitting by the bar.")
	Dialog.AddVoiceover("", "", 0)
	Dialog.AddOption("And?", "dlg_4")
	Dialog.AddOption("Okay, I have had enough. Bye.")

	Dialog.Start()
end

function dlg_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("... And, it turns out the ratonga had what you might call... financial responsibilities to take care of for the proprietor. Looks like the little fur ball won't be back for quite some time! Hraahaha! The barkeep will throw us both out if the big guy over here comes stumbling upstairs one more time. Besides, I don't think he's feeling up to going anywhere right now.")
	Dialog.AddVoiceover("", "", 0)
	Dialog.AddOption("Okay. So?", "dlg_5")
	Dialog.AddOption("Umm, never mind.")

	Dialog.Start()
end

function dlg_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("You're an impatient one, aren't you? You need to slow down a bit! Sit back, grab an ale, and enjoy the sights. Get up you drunken fool! You know, when I was a young pup like yourself I used to be all over Norrath fighting Drakota... with my bare hands.")
	Dialog.AddVoiceover("", "", 0)
	Dialog.AddOption("Okay, get on with it.", "dlg_6")
	Dialog.AddOption("Uphill? I think I've heard this one.")

	Dialog.Start()
end

function dlg_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("And look where it got me. Sitting here with a drunken fool who can't keep both feet on the ground, and talking to a whelp like you. Where was I?  Aye, I want a drink! Why don't you grab the big guy and I an ale.")
	Dialog.AddVoiceover("", "", 0)
	Dialog.AddOption("Sure, I will be right back")
	Dialog.AddOption("No, it looks like you two have had enough.")

	Dialog.Start()
end