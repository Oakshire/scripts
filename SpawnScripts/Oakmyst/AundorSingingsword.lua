--[[
	Script Name	: SpawnScripts/Oakmyst/AundorSingingsword.lua
	Script Purpose	: Aundor Singingsword 
	Script Author	: Dorbin
	Script Date	: 5.2.2022
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"

local BookDelivery = 5514

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The forest's blessing to you. It is a good day to practice sword play, is it not? ")
	Dialog.AddVoiceover("voiceover/english/aundor_singingsword/qey_adv01_oakmyst/aundorsingingsword000.mp3", 715745780, 1617277503)
	if GetQuestStep(Spawn,BookDelivery)==2 then
	Dialog.AddOption("Rune Starshimmer wanted me to deliver this book to you.","Delivery1")
    end
	Dialog.AddOption("I'll keep that in mind, thanks. ")
	Dialog.Start()
end

function Delivery1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("And what book would this be, young one?")
	Dialog.AddVoiceover("voiceover/english/aundor_singingsword/qey_adv01_oakmyst/aundorsingingsword001.mp3", 209447750, 500268709)
	PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	Dialog.AddOption("A copy of Pelle's Adventures.", "Deliver2")
	Dialog.Start()
end

function Deliver2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Adventures? Ha ha! Misdeeds is more like it! This should be quite amusing. Pelles embellishment of history is nothing short of bombastic. Those among us who were actually there know what really happened. For example, when we came across that small encampment of orcs...")
	Dialog.AddVoiceover("voiceover/english/aundor_singingsword/qey_adv01_oakmyst/aundorsingingsword002.mp3",2949325286, 1344537433)
	PlayFlavor(NPC, "", "", "chuckle", 0, 0, Spawn)
	Dialog.AddOption("I should really be getting back to Pelle...", "UpdateDeliveryFinal")
	Dialog.Start()
end

function UpdateDeliveryFinal(NPC, Spawn)
 PlayFlavor(NPC, "", "", "shrug", 0, 0, Spawn)
SetStepComplete(Spawn,BookDelivery,2)
end
