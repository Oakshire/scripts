--[[
    Script Name    : SpawnScripts/IsleRefuge1/MenderMannus.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 04:09:24
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Welcome to the Isle of Refuge! For a price, I'll repair items damaged in battle. With all the goblin attacks, you'll certainly need my services.")
	Dialog.AddVoiceover("voiceover/english/mender_mannus/tutorial_island02/mendermannus000.mp3", 2158256244, 3667630380)
	PlayFlavor(NPC, "", "", "hello", 0,0, Spawn)

	Dialog.AddOption("I have an old salt encrusted cutlass here. Do you think you can fix it up?","Cutlass1")
    Dialog.AddOptionRequirement(REQ_QUEST_ON_STEP, 5724 ,1)

	Dialog.AddOption("I appreciate it.")
	Dialog.Start()
end

function respawn(NPC)
	spawn(NPC)
end

function Cutlass1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Aye, it's seen better days but I should be able to take care of it.  The work will cost you a little bit but not much.  Supplies and all, you know.  Do you have some coin?")
	Dialog.AddVoiceover("voiceover/english/mender_mannus/tutorial_island02/mendermannus001.mp3", 1882269963, 1659514832)
	PlayFlavor(NPC, "", "", "nod", 0,0, Spawn)
--    if HasCoin(Spawn) >=40 then
	Dialog.AddOption("I can give you 40 copper to clean it up.","Cutlass2")
--    end

	Dialog.AddOption("Hmm, I'll have to think about it.")
	Dialog.Start()
end

function Cutlass2(NPC, Spawn)
    RemoveCoin(Spawn,40)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That'll do fine.  I'll have this cleaned up and sharpened right away!  ...just a little scrubbing here... a bit of polish there... a few strokes across the whetstone... hmm... a few more strokes across the whetstone... hmm... a LOT more strokes across the whetstone and... good as new!")
	Dialog.AddVoiceover("voiceover/english/mender_mannus/tutorial_island02_fvo_hascoin.mp3", 700880639, 2012891441)
	PlayFlavor(NPC, "", "", "tapfoot", 0,0, Spawn)
	Dialog.AddOption("This is great.  Thank you!")
	Dialog.Start()
	SetStepComplete(Spawn,5724,1)
    SendMessage(Spawn, "You pay Mender Mannus 40 copper.")
end

