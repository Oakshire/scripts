--[[
    Script Name    : SpawnScripts/Nagafen's Lair/MajordomoInferinus.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 06:06:05
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"
local Drag = 5577

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if not HasLanguage(Spawn,25)then
	RandomGreeting(NPC, Spawn)
	elseif GetQuestStep(Spawn,Drag)==1 then	    
    Dialog1(NPC, Spawn)
    else
	PlayFlavor(NPC, "", "Speak to Lord Nagafen if you wish to test fate.  He will not tollerate insolence.", "", 1165516478, 758436454, Spawn, 25)
   end 
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/giant_thyr_vanguard/ft/giant/giant_thyr_vanguard_1_garbled_666120fe.mp3", "Trobal kvetre platona estrep geitz", "", 1165516478, 758436454, Spawn, 25)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The Great Lord Nagafen will not be conversed with in a mortal language, he finds the use of such offensive.  Consider yourself extremely lucky you are still breathing this very moment.  It is only because his lordship was amused by your success in reaching the gong that you are not a blood stain on his master's floor.  If you wish to speak to the Lord Nagafen you must learn the Draconic language.")
	Dialog.AddVoiceover("voiceover/english/majordomo_inferinus/draconic/majordomo_inferinus001.mp3", 1087549587, 1448775689)
	Dialog.AddLanguage(25)
	Dialog.AddOption("How do I learn this Draconic language? ", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That is of no concern of mine.  Do not return again unless your mind and tongue are capable of speaking the ancient language.  The next time Lord Nagafen will not be so forgiving.  Begone! ")
	Dialog.AddVoiceover("voiceover/english/majordomo_inferinus/draconic/majordomo_inferinus002.mp3", 4255378603, 1258928811)
	Dialog.AddLanguage(25)
	Dialog.AddOption("I'll be back. ")
	Dialog.Start()
	QuestStepIsComplete(Spawn,Drag,1)
end

