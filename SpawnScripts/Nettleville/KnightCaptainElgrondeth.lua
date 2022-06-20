--[[
	Script Name		: SpawnScripts/Nettleville/Knight-CaptainElgrondeth.lua
	Script Purpose	: Knight-Captain Elgrondeth
	Script Author	: Dorbin
	Script Date		: 2022.06.19
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if not HasCompletedQuest(Spawn,1)then
Dialog4(NPC, Spawn)
else
PlayFlavor(NPC, "voiceover/english/knight-captain_elgrondeth/qey_village01/100_quest_captain_elgrondeth_questcomplete_55592dd4.mp3", "I appreciate your help.  If I can return the favor someday, I shall.", "thanks", 1398230613, 3767711690, Spawn, 0)
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("First, I need you to investigate the sudden increase of vermin in Antonica. The beasts are eating away at our food stores and must be destroyed. I would send a guard, but we have more reports than my guards can handle. Are you ready to help?")
	Dialog.AddVoiceover("voiceover/english/knight-captain_elgrondeth/qey_village01/captainelgrondeth002.mp3", 4148519234, 3732616918)
	Dialog.AddOption("I am ready!")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("One of the guards didn't show up for his shift, and I have reports that I need investigated. It's not easy work, but you look up for a challenge. What do you say? You want to help me out with my investigation?")
	Dialog.AddVoiceover("voiceover/english/knight-captain_elgrondeth/qey_village01/captainelgrondeth001.mp3", 1567852224, 3144262033)
	Dialog.AddOption("I would be glad to help.", "Dialog1")
	Dialog.AddOption("Sorry, I can't help right now.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Thank the gods you came along! Just when I need an extra set of hands!")
	Dialog.AddVoiceover("voiceover/english/captain_elgrondeth/qey_village01/captainelgrondeth000.mp3", 3582894338, 2709560661)
	Dialog.AddOption("I am a little preoccupied just now.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn, 0)
	Dialog.AddDialog("Thank the gods you came along! Just when I need an extra set of hands!")
	Dialog.AddVoiceover("voiceover/english/captain_elgrondeth/qey_village01/captainelgrondeth000.mp3", 3582894338, 2709560661)
	Dialog.AddOption("What do you mean?", "Dialog2")
	Dialog.AddOption("I am a little preoccupied just now.")
	Dialog.Start()
end

