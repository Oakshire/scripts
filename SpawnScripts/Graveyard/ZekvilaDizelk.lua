--[[
	Script Name	: SpawnScripts/Graveyard/ZekvilaDizelk.lua
	Script Purpose	: Zekvila Dizelk 
	Script Author	: scatman
	Script Date	: 2009.07.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

local QUEST_1 = 5263
local AWorthyTeacher = 5687

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, AWorthyTeacher)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	RandomVoice(NPC, Spawn)

	if not HasQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_1) then
	    NotWhoIAmExpecting(NPC, Spawn, conversation)
	end
	if HasCompletedQuest(Spawn, QUEST_1) then
        if not HasQuest(Spawn, AWorthyTeacher) and not HasCompletedQuest(Spawn, AWorthyTeacher) then
            FaceTarget(NPC, Spawn)
	        Dialog.New(NPC, Spawn)
	        Dialog.AddDialog("Ah, you again. Yes. How fortunate you have returned. I have great plans for these souls, but they have proven most obstinate. They resist control, and will not bend to my will. Most vexing. I fear a stronger magic is required to make them obedient. I need you to gather some information for me.")
	        Dialog.AddOption("I'll help. What do you want me to do?","Dialog1")
	        Dialog.Start()
        end
    end
    if HasCompletedQuest(Spawn, AWorthyTeacher) then
        RandomVoice(NPC, Spawn)
    end
    if GetQuestStep(Spawn, QUEST_1) == 2 then
        OnQuest1(NPC, Spawn, conversation)
    end
    if GetQuestStep(Spawn, AWorthyTeacher) == 2 then
        FaceTarget(NPC, Spawn)
	    Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("GYAAAGGGHHH!!! How dare she! I swear by the blood of my brood she will pay for this insult! Let Verin Ithelz and all others know that Raban is now my enemy! I will tear her throat out with my teeth! I will claw her heart from her chest!")
	    Dialog.AddOption("Aren't I going to get pa-- Umm... I mean, yes mistress.")
	    Dialog.Start()
	    SetStepComplete(Spawn, AWorthyTeacher, 2)
	else
end

function RandomVoice(NPC, Spawn)
	local choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1027.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1027.mp3", "", "", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1027.mp3", "", "", 0, 0, Spawn)
	end
end

----------------------------------------------------------------------------------------------------------
--					QUEST 1
----------------------------------------------------------------------------------------------------------

function NotWhoIAmExpecting(NPC, Spawn, conversation)
	AddConversationOption(conversation, "Who were you expecting?", "dlg_9_1")
	AddConversationOption(conversation, "None. I'll leave you alone.")
	StartConversation(conversation, NPC, Spawn, "You are not who I was expecting.  What game are you playing with me?")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What task do you need done?", "OfferQuest1")
	AddConversationOption(conversation, "Actually, you're wrong. It's not in my interests to do so. Bye.")
	StartConversation(conversation, NPC, Spawn, "Gyah! How dare you speak to me with a sharp tongue! Who do you think you are, fool? You do not bear the dark instrument; therefore, I've no need for you. Unless ... yes ... yes ... unless my emissary failed at his task. Yes, you shall succeed where the emissary failed. Trust me - it is in your best interest to agree with me.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(NPC, Spawn) == 1 then
		Say(NPC, "You are playing games with me, you deceitful little imp. Go collect the souls or you shall pay dearly.", Spawn)
	else
		AddConversationOption(conversation, "I have collected ten souls from the Undead Knights.", "dlg_1_1")
		AddConversationOption(conversation, "None. I'll leave you alone.")
		StartConversation(conversation, NPC, Spawn, "You are not who I was expecting.  What game are you playing with me?")
	end
end

function dlg_1_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Servant?! Don't ever refer to me... whatever. Bye.")
	StartConversation(conversation, NPC, Spawn, "Give me the crystal. Ah, yes, it's filled.  With these souls, Ithelz's puppet barbarians cannot prevent me from ruling over the district. You served me well, servant. Take this coin as a token of my gratitude.")
end

--====================Quest 2

function Dialog1(NPC, Spawn)
     FaceTarget(NPC, Spawn)
	 Dialog.New(NPC, Spawn)
	 Dialog.AddDialog("I want you to travel to Stonestair Byway and find an Erudite named Raban. She's insufferable, but is well-versed in the necromantic arts. She may be able to discen what I am doing wro-- ... I mean, what immense power I must summon. Give her this missive and treat her with respect. Do not trifle with her ... or with me.")
	 Dialog.AddOption("I'll go give her the message.")
	 Dialog.Start()
	 OfferQuest(NPC, Spawn, AWorthyTeacher)
end