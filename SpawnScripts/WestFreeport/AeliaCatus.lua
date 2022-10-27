--[[
    Script Name    : SpawnScripts/WestFreeport/AeliaCatus.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 07:10:25
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
Dialog2(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail, adventurer.  I'm glad you wandered into my shop. I have an important message, and I need someone to relay it to Ledger Didicus at the port authority.  If you could do this for me, I'd be very thankful.")
	Dialog.AddVoiceover("voiceover/english/optional1/merchant_aelia_catus/fprt_west/mer_aeliacatus.mp3", 1437950883, 1488099263)
	Dialog.AddOption("I'm kind of busy right now.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail, adventurer.  I'm glad you wandered into my shop. ")
	Dialog.AddVoiceover("voiceover/english/optional1/merchant_aelia_catus/fprt_west/mer_aeliacatus.mp3", 1437950883, 1488099263)
	Dialog.AddOption("I'm kind of busy right now.")
	Dialog.AddOption("I'm looking for work.  Do you have anything for me?")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail, adventurer.  I'm glad you wandered into my shop. ")
	Dialog.AddVoiceover("voiceover/english/optional1/merchant_aelia_catus/fprt_west/mer_aeliacatus.mp3", 1437950883, 1488099263)
	Dialog.AddOption("I'm kind of busy right now.")
	Dialog.Start()
end

