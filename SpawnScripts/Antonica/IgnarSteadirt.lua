--[[
	Script Name		:	IgnarSteadirt.lua
	Script Purpose	:	Ignar Steadirt
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

	Dialog.AddDialog("The great Qeynos Claymore -- folks come from all over to pray here.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", 0, 0)
	Dialog.AddOption("Is that why you are here?", "dlg_2")
	Dialog.AddOption("Well, not me.  At least, not right now.")

	Dialog.Start()

	--[[	Say() from this NPC

				Say(NPC, "That is a shame. Please leave me to my prayers.", Spawn)


			Orphaned PlayFlavors
				PlayFlavor(NPC, "", "Hmm, I'll keep praying then. Good day.", "", 1689589577, 4560189, Spawn)
				PlayFlavor(NPC, "", "Return when you are ready, but be quick. They grow stronger by the hour.", "", 1689589577, 4560189, Spawn)
				PlayFlavor(NPC, "voiceover/english/ignar_steadirt/antonica/quest/045_dwarf_ignar_steadirt_g1_onstage7_68f3d9e4.mp3", "Well? Have you spoken with the dwarven centurion yet?  His name's Grimbold Steadirt -- you can't miss him, he's near the gates to Firemyst.", "", 1513486151, 2077778983, Spawn)
				PlayFlavor(NPC, "voiceover/english/ignar_steadirt/antonica/quest/045_dwarf_ignar_steadirt_g1_shame_b6fbc6ba.mp3", "That is a shame. Please leave me to my prayers.", "", 2730895874, 3053314534, Spawn)
				PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
				PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
				PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
				PlayFlavor(NPC, "", "", "", 0, 0, Spawn)

	--]]

end

function dlg_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("I came here seeking strength to defeat my enemies.")
	Dialog.AddVoiceover("", "", 0)
	Dialog.AddOption("Who are your enemies?", "dlg_3")

	Dialog.Start()
end

function dlg_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("I pray for the strength to conquer the undead, but they are not just my enemies; the undead are the enemies of us all.  Several days ago, patrols were sent to see how our battle against the undead was faring.  And I -- I have the most disagreeable task of all.  I have to stand here and wait for the reports to return.  Me! Standing around waiting when there's undead to cleave! Pah!")
	Dialog.AddVoiceover("", "", 0)
	Dialog.AddOption("Wish I had time to help.  Perhaps later.")

	Dialog.Start()
end