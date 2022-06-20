--[[
    Script Name    : SpawnScripts/NorthFreeport/EuphemiusGranius.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 01:06:17
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
Dialog5(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1008.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1008.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1008.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good. Take these containers of reagents to the commonlands. Head to the banks along the Sea of Grass near the Magi Tower. Find that quack Melicinn who conducts his \"so-called\" experiments. The containers are coated in a phosphorous powder that glows when you arrive at the right place. When the containers start to glow, empty the contents on the ground. Return to me with the results of this experiment. Hopefully, you'll report the breakthrough I need.")
	Dialog.AddVoiceover("voiceover/english/euphemius_granius/fprt_north/quests/euphemiusgranius/euphemiusgranius008.mp3", 1258003805, 1541074837)
	Dialog.AddOption("You can count on me.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("As you know, producing golems takes a great deal of time, energy, and money. I've gathered valuable information on creating and controlling the beasts...")
	Dialog.AddVoiceover("voiceover/english/euphemius_granius/fprt_north/quests/euphemiusgranius/euphemiusgranius001.mp3", 2862838662, 604767921)
	Dialog.AddOption("Please continue.", "Dialog9")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, it's you.  I really don't have any time right now, you're dismissed.")
	Dialog.AddVoiceover("voiceover/english/euphemius_granius/fprt_north/quests/euphemiusgranius/euphemiusgranius011.mp3", 3965217984, 775059204)
	Dialog.AddOption("Okay.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ahh ... you're back ... do you have the zombie remains?")
	Dialog.AddVoiceover("voiceover/english/euphemius_granius/fprt_north/quests/euphemiusgranius/euphemiusgranius005.mp3", 3205486195, 962913784)
	Dialog.AddOption("Yes I have the remains.", "Dialog7")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello there. You look eager. Will you help me? If you're a good citizen, you know the importance of academic research.")
	Dialog.AddVoiceover("voiceover/english/euphemius_granius/fprt_north/quests/euphemiusgranius/euphemiusgranius000.mp3", 3590594591, 2513692343)
	Dialog.AddOption("I might be willing, tell me more.", "Dialog2")
	Dialog.AddOption("Perhaps some other time.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, what happened?")
	Dialog.AddVoiceover("voiceover/english/euphemius_granius/fprt_north/quests/euphemiusgranius/euphemiusgranius009.mp3", 3354667576, 2401085198)
	Dialog.AddOption("I haven't been able to test your reagents yet.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Excellent!  I'll produce regeants with these cadavers. My methods shall revolutionize golem creation! My name shall be honored throughout Freeport! I need nothing more from you; I've work to do. Be gone.")
	Dialog.AddVoiceover("voiceover/english/euphemius_granius/fprt_north/quests/euphemiusgranius/euphemiusgranius006.mp3", 2913012525, 3358874287)
	Dialog.AddOption("Okay.")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, what happened?")
	Dialog.AddVoiceover("voiceover/english/euphemius_granius/fprt_north/quests/euphemiusgranius/euphemiusgranius009.mp3", 3354667576, 2401085198)
	Dialog.AddOption("A huge rotting mess of a golem sprang out of the muck, why didn't you warn me?", "Dialog11")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I believe I can construct golems using the same forces that animate the undead.  I'm in the midst of in-depth research and I need you to collect samples of undead troll and ogre remains from the Fallen Gate area. Can you handle this task?")
	Dialog.AddVoiceover("voiceover/english/euphemius_granius/fprt_north/quests/euphemiusgranius/euphemiusgranius002.mp3", 3775562579, 3177609254)
	Dialog.AddOption("How many samples do you need?", "Dialog13")
	Dialog.AddOption("I'm not interested.")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ahh ... you're back ... do you have the zombie remains?")
	Dialog.AddVoiceover("voiceover/english/euphemius_granius/fprt_north/quests/euphemiusgranius/euphemiusgranius005.mp3", 3205486195, 962913784)
	Dialog.AddOption("I'm still collecting samples.")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That's great news!  I knew I could succeed where the others had failed.  Consider yourself fortunate, you are in the presence of one of the greatest minds in Freeport history.  The academy knows how to reward those who persevere.  Take heart that even one such as yourself had a role to play in my ascendance.  ")
	Dialog.AddVoiceover("voiceover/english/euphemius_granius/fprt_north/quests/euphemiusgranius/euphemiusgranius010.mp3", 1598582616, 3261831074)
	Dialog.AddOption("Okay.")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Back so soon? It doesn't surprise me.  Many, like you, are drawn to my greatness like a moth to a flame. Be assured, your adoration is not in vain.  I'm on the verge of a major breakthrough, and I need someone to test my reagents. Will you do this?")
	Dialog.AddVoiceover("voiceover/english/euphemius_granius/fprt_north/quests/euphemiusgranius/euphemiusgranius007.mp3", 3762043988, 2784731175)
	Dialog.AddOption("Certainly.", "Dialog1")
	Dialog.AddOption("Not right now.")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I require samples of several troll and ogre zombies. I can use only pristine specimens so do not damage the bodies. When you collect these corpses, return to me. Now, don't waste my time, get moving!")
	Dialog.AddVoiceover("voiceover/english/euphemius_granius/fprt_north/quests/euphemiusgranius/euphemiusgranius003.mp3", 479128782, 4029940593)
	Dialog.AddOption("I'm on my way.")
	Dialog.Start()
end
