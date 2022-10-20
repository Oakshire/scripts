--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/EmpressAnassa.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.19 01:10:53
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local QUEST_FROM_NEOLA = 228
local QUEST_FROM_JUDGE = 229
local QUEST_1 = 230

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings and welcome to our hollowed grove. What is it you seek?")
	Dialog.AddVoiceover("voiceover/english/empress_anassa/qey_adv01_oakmyst/empressanassa000.mp3", 122104258, 2418821305)
	if HasCompletedQuest(Spawn, QUEST_FROM_NEOLA) and HasCompletedQuest(Spawn, QUEST_FROM_JUDGE) and not HasQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_1) then
	Dialog.AddOption("Your judge has sent me. ", "Dialog1")
	elseif HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 1 then
	Dialog.AddOption("What is Rotweed?", "WhatIsRotweed")
	elseif HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2 then
	Dialog.AddOption("I've killed Rotweed.", "KilledRotweed")
    end
	Dialog.AddOption("I seek nothing. Farewell.")
	Dialog.Start()
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You're the one Eunomia speaks of so highly. You served us well, but the corruption spoiling this forest still looms. We must destroy it!")
	Dialog.AddVoiceover("voiceover/english/empress_anassa/qey_adv01_oakmyst/empressanassa001.mp3", 2413694223, 3249886885)
	Dialog.AddOption("I will challenge this evil. ", "OfferQuest1")
	Dialog.AddOption("I cannot help you now. Farewell.")
	Dialog.Start()
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end


function WhatIsRotweed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("In this age, all woodlands fight a silent battle. The forces of nature have become twisted and tormented. Rotweed is one of these corrupted creations that taints the woodlands of Norrath.")
	Dialog.AddVoiceover("voiceover/english/empress_anassa/qey_adv01_oakmyst/empressanassa003.mp3", 1907995091, 655055942)
	Dialog.AddOption("I will battle this Rotweed and return victorious. ")
	Dialog.Start()
end

function KilledRotweed(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("This is good, but others like Rotweed will return someday. We will watch and defend. We, of this woodland, thank you.")
	--Missing VoiceOver MP3 Keys (1/17/2022)- Dorbin
	Dialog.AddVoiceover("voiceover/english/empress_anassa/qey_adv01_oakmyst/empressanassa004.mp3", 0, 0)
	Dialog.AddOption("Thank you, Empress Anassa.")
	Dialog.Start()
end

