--[[
	Script Name	: SpawnScripts/ElddarGrove/ShakanNotebend.lua
	Script Purpose	: Shakan Notebend <Dirge Trainer>
	Script Author	: Dorbin
	Script Date	: 2022.05.07
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
 Dialog2(NPC, Spawn)   
end  

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well met.  What brings you to the Elddar Grove this fine day?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", 0, 0, Spawn)
	Dialog.AddOption("Just looking around.")
	Dialog.Start()
end


--		PlayVoice(NPC, "lieoonlioo_croosinian/qey_elddar/trainer_troubador001.mp3", 484417616, 3729027420)


