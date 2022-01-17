--[[
	Script Name	: SpawnScripts/Oakmyst/JudgeEunomia.lua
	Script Purpose	: Judge Eunomia 
	Script Author	: scatman
	Script Date	: 2009.05.09
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local QUEST_FROM_NEOLA = 228
local QUEST_1 = 229

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/judge_eunomia/qey_adv01_oakmyst/judgeeunomia000.mp3", "", "", 3368710342, 876052157, Spawn)
	
	if HasCompletedQuest(Spawn, QUEST_FROM_NEOLA) and not HasQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "I have served Scholar Neola.", "dlg_1_1")
	elseif HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2 then
		AddConversationOption(conversation, "I have killed the imposters.", "dlg_3_1")
	end
	
	AddConversationOption(conversation, "Bah! What does a plant know of justice? Farewell. ")
	StartConversation(conversation, NPC, Spawn, "Justice is our only recourse when the forests are torn asunder.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/judge_eunomia/qey_adv01_oakmyst/judgeeunomia001.mp3", "", "", 419193252, 168213700, Spawn)
	AddConversationOption(conversation, "I can hunt down these imposters.", "OfferQuest1")
	AddConversationOption(conversation, "I am no executioner. Farewell. ")
	StartConversation(conversation, NPC, Spawn, "You are the one who aided our sapling. You can help me execute my judgement. Twisted, disloyal imposters live in the woodland. They hide amongst the noble, but they don't fool me or my sisters.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function dlg_3_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/judge_eunomia/qey_adv01_oakmyst/judgeeunomia003.mp3", "", "", 1922975222, 1148613241, Spawn)
	AddConversationOption(conversation, "It was a pleasure to defend the Oakmyst.")
	StartConversation(conversation, NPC, Spawn, "You proved your devotion to the dryads of this forest. The Empress has taken note of your good deeds. She awaits you.")
end