--[[
	Script Name	: SpawnScripts/Starcrest/LuvileBinlee.lua
	Script Purpose	: Luvile Binlee 
	Script Author	: John Adams
	Script Date	: 2008.09.23
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
	Dialog.AddDialog("I'm contemplating how this tree symbolizes a person's life ... We all come from a solid trunk grounded in history, and the tree branches represent the random choices we make in life...")
	Dialog.AddVoiceover("voiceover/english/optional5/luvile_binlee/qey_village02/luvilebinlee000.mp3", 2956622106, 3546014069)
	Dialog.AddOption("That's a bit deep for me.  Sorry for bothering your meditations.")
	Dialog.Start()
end
