--[[
	Script Name		: SpawnScripts/SpiritsoftheLost/SpiritofMarrsChosen.lua
	Script Purpose	: Spirit of Marr's Chosen
	Script Author	: neatz09
	Script Date		: 2023.04.10
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
Say(NPC, "Im a fuckin froglok motherfucker.")
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I fear that the most difficult part of your path is yet to come. Now that you have come to aid me, surely all the denizens of this foul place will come to aid the master.")
	Dialog.AddOption("Which master? Venekor?", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You know of the scaled demon then. For centuries I have been kept here. I cannot truly be free until Venekor releases me from this place, and I do not believe he will do so willingly. You must slay him, and I will be free.")
	Dialog.AddOption("We will do what we can.", "Dialog4")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I can scarcely believe that there are those who are mighty enough to challenge those who have kept me sequestered here. Have you come at the behest of our race, or are you merely here seeking treasure?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1028.mp3", 0, 0)
	Dialog.AddOption("We have come to free you. What must be done?", "Dialog1")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Beware, for he will have called up some of his most vengeful watchers to protect that which he must hold locked away from Norrath. You must not fall to the Achiole! Should you manage to defeat Venekor on the field of battle, I will once again be able to join those of my former race within the Feerrott.")
	Dialog.AddOption("Soon you shall be free.")
	Dialog.Start()
end

