--[[
    Script Name    : SpawnScripts/antonica/Geddard.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.26 07:06:47
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local DeliveriesForFlores = 5333 -- Deliveries For Flores Quest

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Welcome to Gnollslayer Keep!  I'm Geddard, the only merchant for leagues.  If I don't got it, you don't need it!  What'll it be for you today?")
	Dialog.AddVoiceover("voiceover/english/merchant_geddard/antonica/merchantgeddard000.mp3", 1542141863, 1883255955)
	if GetQuestStep(Spawn, DeliveriesForFlores) == 2 then
	Dialog.AddOption("I'm here to deliver a crate of supplies from Flores.", "Option1")
	end
	Dialog.AddOption("Nothing right now thanks.")
	Dialog.Start()
end

function Option1(NPC, Spawn)
    SetStepComplete(Spawn, DeliveriesForFlores, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Why didn't you say so?  Let me see what you've brought...excellent! I'll take that crate you're carrying. And here's the pouch for Flores.  ")
	Dialog.AddVoiceover("voiceover/english/merchant_geddard/antonica/merchantgeddard001.mp3", 3026041322, 2122466947)
     PlayFlavor(NPC, "", "", "wink", 0, 0, Spawn)
	Dialog.AddOption("I will, take care! Good luck with your sales.")
	Dialog.Start()
end


function respawn(NPC)
	spawn(NPC)
end