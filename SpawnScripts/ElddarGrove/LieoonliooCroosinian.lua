--[[
	Script Name	: SpawnScripts/ElddarGrove/LieoonliooCroosinian.lua
	Script Purpose	: Lieoonlioo Croosinian <Troubador Trainer>
	Script Author	: Dorbin
	Script Date	: 2022.05.07
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
 Dialog2(NPC, Spawn)   
RandomGreeting(NPC, Spawn)
end  

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well met.  What brings you to the Elddar Grove this fine day?")
	Dialog.AddVoiceover("lieoonlioo_croosinian/qey_elddar/trainer_troubador001.mp3", 484417616, 3729027420)
	Dialog.AddOption("Just looking around.")
	Dialog.Start()
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", 0, 0, Spawn)
	end
end
