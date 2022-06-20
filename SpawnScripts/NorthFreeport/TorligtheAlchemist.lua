--[[
    Script Name    : SpawnScripts/NorthFreeport/TorligtheAlchemist.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 01:06:20
    Script Purpose : 
                   : 
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
	Dialog.AddDialog("Shhhh! Don't distract me ... I need a steady hand to ensure I combine this potion correctly. One mistake and the blast will reduce this building to rubble. Deal with my apprentices if you want to buy something.")
	Dialog.AddVoiceover("voiceover/english/torlig_the_alchemist/fprt_north/torlig_the_alchemist.mp3", 4161370754, 1751042550)
	Dialog.AddOption("Fine then, I will leave you to your perfumes and snake oils.")
	Dialog.Start()
end
