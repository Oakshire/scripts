--[[
	Script Name		: SpawnScripts/BeggarsCourt/KaseoVolcatius.lua
	Script Purpose	: Kaseo Volcatius
	Script Author	: torsten
	Script Date		: 2022.07.18
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local BigTroubleBeggarsCourt = 5669

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetQuestStep(Spawn, BigTroubleBeggarsCourt) == 2 then
        SetStepComplete(Spawn, BigTroubleBeggarsCourt, 2)
        Dialog1(NPC, Spawn)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "You lack the importance to address me. Away with you.", "no", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings, citizen. You are either very brave or very foolish to approach a captain of the Freeport Militia without being ordered to do so. Still, I can see determination in your eyes. What is it you want?")
	Dialog.AddOption("Greetings, sir. I stumbled upon a note that may be of interest to you.", "Dialog3")
	Dialog.AddOption("My apologies. I must be leaving.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Why do you waste my time on such trivial matters? What did this note say? Be quick about it!")
	Dialog.AddOption("It contains false information about the Overlord that attempts to discredit his great name.", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What? Give me those documents right away! Tell me right now how you obtained them!")
	Dialog.AddOption("A dishonorable man tried to sell them to me. I slew him for his crimes, sir.", "Dialog5")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well done, citizen. It is good to meet a brave individual who takes pride in our city. I wish more of our citizens had your traits. I will be sure to use your story as an example to inspire the rabble that live in the other districts.")
	Dialog.AddOption("Thank you sir, but that's really not necessary.", "Dialog4")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Do not be so modest. This entire district shall hear of your bravery. Be well, citizen.")
	Dialog.AddOption("Great...")
	Dialog.Start()
end
