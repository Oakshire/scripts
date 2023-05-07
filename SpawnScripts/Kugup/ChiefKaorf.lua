--[[
	Script Name		: SpawnScripts/TheLostVillageofKugup/ChiefKaorf.lua
	Script Purpose	: Chief Kaorf
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
		PlayFlavor(NPC, "", "Then bring to me the pondstone. You must be ready to fully relinquish it to me. Do not hold the stone tightly, for it is not your only way here.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "You are a stranger to me. Prove yourself to my village, and then we shall talk.", "", 0, 0, Spawn, 0)
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
	Dialog.AddDialog("Of that I have no doubt. However, the time is not yet right. Take with you this talisman. With it, you will be able to return to us when you are ready and, when that time comes, perhaps we too will be ready.")
	Dialog.AddOption("How do I get home?")
	Dialog.AddOption("I'll see you then.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Where you first entered the village, there is a sacred portal stone. You may use it to return to your home. Depart now, friend of my people.")
	Dialog.AddOption("I hope to see you again soon.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("My greatest dream is that my people will one day be returned to our former glory. If that glory is ever to be restored, we will need great champions.")
	Dialog.AddOption("I am a great champion.", "Dialog1")
	Dialog.AddOption("Well, that's not me.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I see you have done much for my village and its people. I thank you.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1024.mp3", 0, 0)
	Dialog.AddOption("Is there more I can do?", "Dialog3")
	Dialog.AddOption("I have to go.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I see you have done much for my village and its people. I thank you.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1024.mp3", 0, 0)
	Dialog.AddOption("Is there more I can do?", "Dialog3")
	Dialog.AddOption("I have to go.")
	Dialog.Start()
end

