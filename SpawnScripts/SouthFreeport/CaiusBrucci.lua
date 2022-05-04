--[[
	Script Name		: SpawnScripts/SouthFreeport/CaiusBrucci.lua
	Script Purpose	: Caius Brucci
	Script Author	: Dorbin
	Script Date		: 2022.05.04
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
	Dialog.AddDialog("Fair weather and prosperous harvest to you.  What might I interest you in today?")
	Dialog.AddVoiceover("merchant_caius_brucci/fprt_south/quests/caiusbrucci/caiusbrucci000.mp3", 327617661, 365467)
	Dialog.AddOption("Just browsing.")
	Dialog.Start()
end
