--[[
	Script Name		: SpawnScripts/NorthQeynos/PriestessAlloraReed.lua
	Script Purpose	: Priestess Allora Reed
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
Dialog1(NPC, Spawn)
end



function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Rodcet's blessing be upon you.  I am a priestess of this temple.  As you can see, though the gods have left Norrath, our faith sustains us and strengthens our resolve.  When the Prime Healer returns to us, it shall be a glorious day indeed!")
	Dialog.AddVoiceover("voiceover/english/priestess_allora_reed/qey_north/priestessallorareed000.mp3", 1863972584, 3458158544)
	Dialog.AddOption("Perhaps... we shall see if that day comes.")
	Dialog.Start()
end