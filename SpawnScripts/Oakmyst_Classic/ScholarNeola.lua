--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/ScholarNeola.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.19 01:10:48
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local QUEST_1 = 228


function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if HasCompletedQuest(Spawn,QUEST_1)then
    SavedSapling(NPC, Spawn)
    else
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Why do you tread upon the fertile ground? Doing so taints the lustrous blades that our young sapling needs to grow.")
	Dialog.AddVoiceover("voiceover/english/scholar_neola/qey_adv01_oakmyst/scholarneola000.mp3", 684527020, 3141115058)
	if not HasCompletedQuest(Spawn, QUEST_1) and not HasQuest(Spawn, QUEST_1)  then
	Dialog.AddOption("What is wrong with the sapling? ", "Dialog3")
	elseif HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 3 then
	Dialog.AddOption("I saved the sapling.", "SavedSapling")
    end
	Dialog.AddOption("I will trod where I please. Goodbye! ")
	Dialog.Start()
end
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The young sapling is still weak. It feeds upon the mana of this thicket but needs greater nutrients to prosper in this woodland.")
	Dialog.AddVoiceover("voiceover/english/scholar_neola/qey_adv01_oakmyst/scholarneola001.mp3", 4101705727, 2237841081)
	Dialog.AddOption("Is there anything I can do to help the sapling? ", "OfferQuest1")
	Dialog.AddOption("Your sapling is not my problem. Farewell. ")
	Dialog.Start()
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function SavedSapling(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The sapling has a young battle ahead to become a timber lord. Your help brings it closer to this goal. Now you must seek out the Judge. She awaits those who aid this forest.")
	Dialog.AddVoiceover("voiceover/english/scholar_neola/qey_adv01_oakmyst/scholarneola003.mp3", 1414143988, 1696039201)
	Dialog.AddOption("I will speak to the judge.")
	Dialog.Start()
if HasQuest(Spawn,QUEST_1)then
    SetStepComplete(Spawn, QUEST_1, 3)
    end
end