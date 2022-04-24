--[[
	Script Name		: SpawnScripts/NorthQeynos/Knight-GuardRellinthir.lua
	Script Purpose	: Knight-Guard Rellin`thir
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1012.mp3", "Hail, citizen.  Welcome to the castle.  Only nobility or those with court business may proceed inside.", "salute", 0, 0, Spawn, 0)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "Hail, citizen.  Welcome to the castle.  Only nobility or those with court business may proceed inside.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Please return to me when you have completed your current task.", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Your guild is very well-disciplined. We can't thank you enough for all of the help you've given us.  You need to speak to Sergeant Ironcast.  He'll have all your guild's writs from now on.  Congratulations on your promotion!", "", 0, 0, Spawn, 0)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("...")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1012.mp3", 0, 0)
	Dialog.AddOption("I would like the writ: Sabertooth Skulkers", "Dialog3")
	Dialog.AddOption("I would like the writ: Flying Artillery")
	Dialog.AddOption("I would like the writ: The Wall of Thunder")
	Dialog.AddOption("I will be going.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("...")
	Dialog.AddOption("I would like the writ: Sabertooth Skulkers")
	Dialog.AddOption("I would like the writ: Flying Artillery")
	Dialog.AddOption("I would like the writ: The Wall of Thunder")
	Dialog.AddOption("I will be going.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello! Nice to have another helping hand with these defenses. I was told that your guild was quite skilled, so I'll give you something a bit more challenging. Here's the writ, make sure you thoroughly brief your troops.  The city can't afford a single casualty!  The queen protects.")
	Dialog.AddOption("Okay.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("...")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1012.mp3", 0, 0)
	Dialog.AddOption("I would like the writ: Sabertooth Skulkers")
	Dialog.AddOption("I would like the writ: Flying Artillery")
	Dialog.AddOption("I would like the writ: The Wall of Thunder")
	Dialog.AddOption("I will be going.")
	Dialog.Start()
end

