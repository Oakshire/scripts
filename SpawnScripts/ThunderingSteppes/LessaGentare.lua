--[[
    Script Name    : SpawnScripts/ThunderingSteppes/LessaGentare.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 03:06:50
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
    FaceTarget(NPC,Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1047.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1003.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1047.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("So you beat Chon's time in both Antonica and the Commonlands, eh?  Impressive!  This route's a little harder though.")
	Dialog.AddVoiceover("voiceover/english/lessa_gentare/steppes/lessa_gentare001.mp3", 4106101565, 983883578)
	Dialog.AddOption("Tell me about it.", "Dialog3")
	Dialog.AddOption("Spare me the details, I want to run!")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ready... Set...")
	Dialog.AddVoiceover("voiceover/english/lessa_gentare/steppes/lessa_gentare004.mp3", 2010131401, 109290723)
	Dialog.AddOption("[continue]", "Dialog4")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("First off, everything's a whole lot nastier out here.  We're further from civilization, and I can guarantee you that the giants and centaurs won't be interested in having a picnic.  Neither will the griffons, unless you're on their menu.")
	Dialog.AddVoiceover("voiceover/english/lessa_gentare/steppes/lessa_gentare002.mp3", 2632787061, 322868000)
	Dialog.AddOption("Alright, so it's going to be hard. What's the route?", "Dialog5")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("GO!")
	Dialog.AddVoiceover("voiceover/english/lessa_gentare/steppes/lessa_gentare005.mp3", 3886709801, 3338965745)
	Dialog.AddOption("...")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Starting here, it's a stop by Thundermist, through the Deadview Pass, then on to the Shrine of the Sirens.  Take a quick run through the Shrine of Decay, a short jaunt to the Coldwind Cove, a splash through the Grave Pool, and then head back to these docks. ")
	Dialog.AddVoiceover("voiceover/english/lessa_gentare/steppes/lessa_gentare003.mp3", 1069727586, 4196073391)
	Dialog.AddOption("I'm ready!", "Dialog2")
	Dialog.AddOption("I'll wait a bit and explore the area more first.")
	Dialog.Start()
end

