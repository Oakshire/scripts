--[[
	Script Name		:	DarmenSproutmore.lua
	Script Purpose	:	Darmen Sproutmore
	Script Author	:	Jabantiz
	Script Date		:	08/29/2019
	Script Notes	:	Auto-Generated from a chat log using SpawnScriptDesigner
--]]
require "SpawnScripts/Generic/DialogModule"

local HowDidTheirGardenGrow = 5361

function spawn(NPC)
ProvidesQuest(NPC,5361)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail to you, adventurer! Mind your feet, and don't step on my dear little flowers! Just coming into bloom, they are.")
	Dialog.AddVoiceover("voiceover/english/darmen_sproutmore/antonica/darmensproutmore000.mp3", 2138797897, 3113209185)
    PlayFlavor(NPC, "", "", "curtsey",  0, 0,Spawn)
    if CanReceiveQuest(Spawn, HowDidTheirGardenGrow) then
	Dialog.AddOption("Your daisies look very nice.  You must be a fine gardener.", "Option1")
	elseif GetQuestStep(Spawn, HowDidTheirGardenGrow)==2 then
	Dialog.AddOption("The Knights of Thunder had an atrium underground.  ", "Option3")
    end
	Dialog.AddOption("I must be off. Good day to you. ")
	Dialog.Start()
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Thank you!  Gardening is my life.  I love tending the small, green things of the earth.  Why, some of these sprouts shall be tall trees one day.  And, many of my plants, will soon feed the people of Qeynos.  Hmm ... makes one wonder, though.  What do you suppose fed those Knights of Thunder so long ago?")
	Dialog.AddVoiceover("voiceover/english/darmen_sproutmore/antonica/darmensproutmore001.mp3", 3489573816, 2242982097)
    PlayFlavor(NPC, "", "", "thanks",  0, 0,Spawn)
	Dialog.AddOption("What Knights of Thunder?", "Option2")
	Dialog.Start()
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, come now!  Surely you have heard the rumors that some explorers believe they found the location of the legendary Stormhold? ... The ancient fortress of the Knights of Thunder?  Personally, I think those \"explorers\" were crypt raiders, but what do I know?  Plants.  That's what I know.  And no one ever saw the Knights of Thunder growing their own plants ...  or hauling supply wagons out of Qeynos for that matter.  So, how do you suppose they fed themselves?  Hmm?")
	Dialog.AddVoiceover("voiceover/english/darmen_sproutmore/antonica/darmensproutmore002.mp3", 2498400696, 3478793084)
    PlayFlavor(NPC, "", "", "tapfoot",  0, 0,Spawn)
	Dialog.AddOption("I may explore Stormhold some day.  If I find out how, I'll be sure to let you know.", "offer")
	Dialog.AddOption("Maybe someday some brave explorer will find the answer. ")
	Dialog.Start()
end

function Option3(NPC, Spawn)
    SetStepComplete(Spawn, HowDidTheirGardenGrow, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("An atrium?  How marvelous!  They must've grown their food plants in the atrium.  Karana could've used his power to enchant the dark space with sunlight and water ... even under the ground.  Amazing, isn't it?")
	Dialog.AddVoiceover("voiceover/english/darmen_sproutmore/antonica/darmensproutmore004.mp3", 3378309886, 1783566743)
    PlayFlavor(NPC, "", "", "boggle",  0, 0,Spawn)
	Dialog.AddOption("Aye, it is.")
	Dialog.Start()
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, HowDidTheirGardenGrow)
end
