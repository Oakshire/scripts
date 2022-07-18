--[[
	Script Name		: SpawnScripts/BeggarsCourt/ReanaAstia.lua
	Script Purpose	: Reana Astia
	Script Author	: torsten
	Script Date		: 2022.07.18
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    Dialog3(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Me?!  A farmer?!  HA!  I just sell the stuff to make a little money.  You can't have fun in this place without a little bit of the cold, hard coin. You know?  If I can get this all sold off, I'll have enough to throw a decent party down by the docks.  Cazic knows, this place needs some action!")
	Dialog.AddVoiceover("voiceover/english/reana_astia/fprt_hood04/std_reana_astia000.mp3", 3252979034, 309845439)
	Dialog.AddOption("When's the party?", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That all depends on when I can get this all sold, doesn't it?  So are you going to take this off my hands or what?  I know you have some money in your pockets.  Just one sack of grain and you can eat for days.")
	Dialog.AddVoiceover("voiceover/english/reana_astia/fprt_hood04/std_reana_astia001.mp3", 4204669996, 3295304812)
	Dialog.AddOption("Okay.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hey! Do you want some grain?  Nothing's wrong with it.  Come on, it'll be good for making beer or something.")
	Dialog.AddVoiceover("voiceover/english/reana_astia/fprt_hood04/std_reana_astia.mp3", 3795939248, 4147514993)
	Dialog.AddOption("Then I have no need to talk to you.")
	Dialog.AddOption("Are you a farmer?", "Dialog1")
	Dialog.Start()
end

