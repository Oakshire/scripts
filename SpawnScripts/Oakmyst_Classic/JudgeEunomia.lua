--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/JudgeEunomia.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.19 01:10:41
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local QUEST_FROM_NEOLA = 228
local QUEST_1 = 229

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if HasCompletedQuest(Spawn,QUEST_1)then
    Dialog2(NPC, Spawn)
    else
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Justice is our only recourse when the forests are torn asunder.")
	Dialog.AddVoiceover("voiceover/english/judge_eunomia/qey_adv01_oakmyst/judgeeunomia000.mp3", 3368710342, 876052157)
	if HasCompletedQuest(Spawn, QUEST_FROM_NEOLA) and not HasQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_1) then
	Dialog.AddOption("I have served Scholar Neola. ", "Dialog1")
	elseif HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2 then
	Dialog.AddOption("I have killed the imposters.", "Dialog2")
    end
	Dialog.AddOption("Bah! What does a plant know of justice? Farewell. ")
	Dialog.Start()
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You are the one who aided our sapling. You can help me execute my judgement. Twisted, disloyal imposters live in the woodland. They hide amongst the noble, but they don't fool me or my sisters.")
	Dialog.AddVoiceover("voiceover/english/judge_eunomia/qey_adv01_oakmyst/judgeeunomia001.mp3", 419193252, 168213700)
	Dialog.AddOption("I can hunt down these imposters.", "OfferQuest1")
	Dialog.AddOption("I am no executioner. Farewell. ")
	Dialog.Start()
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function Dialog2(NPC, Spawn)
if HasQuest(Spawn,QUEST_1)then
    SetStepComplete(Spawn, QUEST_1, 2)
    end
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You proved your devotion to the dryads of this forest. The Empress has taken note of your good deeds. She awaits you.")
	Dialog.AddVoiceover("voiceover/english/judge_eunomia/qey_adv01_oakmyst/judgeeunomia003.mp3", 1922975222, 1148613241)
	Dialog.AddOption("It was a pleasure to defend the Oakmyst.")
	Dialog.Start()
end