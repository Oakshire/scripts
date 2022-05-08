--[[
	Script Name		: SpawnScripts/TheElddarGrove/ShepherdSellar.lua
	Script Purpose	: Shepherd Sell`ar
	Script Author	: Dorbin
	Script Date		: 2022.05.07
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/shepherd_sell_ar/qey_elddar/100_soc_woodelf_tunarian_officer_sellar_no_eb5d5c04.mp3", "Keep your eyes on the horizon, my friend.  Only through vigilance and defense can we keep Qeynos safe.", "hello", 2313411287, 2526153033, Spawn, 0)
	FaceTarget(NPC, Spawn)
end


function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm sorry we can't talk now!  Were facing a possible invasion, and the Queen has commanded us to meet with the city guard about the matter.  Here is your writ.  Return to me once you complete your mission.")
	Dialog.AddOption("Okay.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("...")
	Dialog.AddOption("I would like the writ: Get the Balance Right", "Dialog1")
	Dialog.AddOption("I would like the writ: The Heavy Boot of Civilization")
	Dialog.AddOption("I would like the writ: Green Greasy Guardians")
	Dialog.AddOption("I would like the writ: Stench of the Void")
	Dialog.AddOption("I would like the writ: The Imbibers")
	Dialog.AddOption("I will be going.")
	Dialog.Start()
end

