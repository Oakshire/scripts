--[[
    Script Name    : SpawnScripts/NorthFreeport/ElmaLowe.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 04:06:22
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
	Dialog.AddDialog("Come in. Come in.  Welcome to the Jade Tiger's Den, the finest tavern in all of Freeport.  Feel free to browse our menu. I personally guarantee that we serve only the highest-quality food and brews. ")
	Dialog.AddVoiceover("voiceover/english/elma_lowe/fprt_north/elmalowe000.mp3", 3610495310, 1230069492)
	Dialog.AddOption("I'll take a look around. ")
	Dialog.Start()
end

