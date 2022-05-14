--[[
	Script Name		: SpawnScripts/NorthQeynos/LillyIronforge.lua
	Script Purpose	: Lilly Ironforge
	Script Author	: Dorbin
	Script Date		: 2022.04.22
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
      SetTarget(NPC,Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, lovely! Gray's performance has started! I've no time to talk, but go find my sister, Laura. She loves to chat. Good day now.")
	Dialog.AddVoiceover("voiceover/english/lilly_ironforge/qey_north/lillyironforge.mp3", 1866795751, 1237890052)
	Dialog.AddOption("I just might do that.  Enjoy the performance!")
	Dialog.Start()
end

