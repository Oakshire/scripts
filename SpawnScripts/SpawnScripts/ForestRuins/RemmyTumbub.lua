--[[
	Script Name	: SpawnScripts/ForestRuins/RemmyTumbub.lua
	Script Purpose	: Remmy Tumbub 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

local HALFLING = 7
local HALFLING_MENTOR_QUEST_5 = 74
local QUEST_1 = 1

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, HALFLING_MENTOR_QUEST_5) then
		AddConversationOption(conversation, "Indeed... Pie Man Sam.", "ItWasntMe")
	end
	
	if HasCompletedQuest(Spawn, QUEST_1) then
	elseif HasQuest(Spawn, QUEST_1) then
	else
		if GetRace(Spawn) == HALFLING and GetLevel(Spawn) >= 3 then
			HelloHello(NPC, Spawn, conversation)
		else
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/remmy_tumbub/qey_adv02_ruins_revamp/qst_halfling_remmy_tumbub_notonquest_e37ef08f.mp3", "I rate pies in both scent and flavor. A pie with a delicious flavor can win over a lady's heart, but a pie with a delicious scent can lure even the most steadfast guard away from their post.", "", 4222932588, 1585778770)
		end
	end

	--[[if HasQuest(Spawn, 74) and GetQuestStep(Spawn, 74) == 1 then
		HelloHello(NPC, Spawn, conversation)
	else
		choice = math.random(1,2)

		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/remmy_tumbub/qey_adv02_ruins_revamp/qst_halfling_remmy_tumbub_notonquest_e37ef08f.mp3", "I rate pies in both scent and flavor. A pie with a delicious flavor can win over a lady's heart, but a pie with a delicious scent can lure even the most steadfast guard away from their post.", "", 4222932588, 1585778770)
		else
			PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0)
		end

		AddConversationOption(conversation, "Why are you still hiding out here?", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "Hey, thanks again for your help. I still won't be allowed back in the Baubbleshire, but I'm no longer a wanted criminal in all of Qeynos!")
	end--]]
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "You're hopeless.", "dlg_4_2")
	StartConversation(conversation, NPC, Spawn, "Shhh, keep your voice down! You know, I wonder if any of those crates in the guard shed have pies in them.")
end

-----------------------------------------------------------------------------------------
--		QUEST FROM BAUBBLESHIRE
-----------------------------------------------------------------------------------------

function ItWasntMe(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Give it up. Whining won't save you. The only thing that can save you now is direct payment.", "OfCourseOfCourse")
	AddConversationOption(conversation, "Rondo was right, you fell for it big time.", "RondoWasRight")
	StartConversation(conversation, NPC, Spawn, "Oh no! It wasn't me! It's not me! I'm just a halflin' going for a walk. Oh no no no no no no! How did you find me? Listen, I didn't take the pies for myself, I had to feed a starvin' family in Antonica. They NEEDED me! Oh, oh, gosh, listen, I have the money, eh, just not on me, hehe. I'll get to the proper authorities, just don't, don't tell anyone!")
end

function OfCourseOfCourse(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Offering a bribe! That's another charge we can add to your file.", "ButYouJustSaid")
	AddConversationOption(conversation, "Rondo was right, you fell for it big time.", "RondoWasRight")
	StartConversation(conversation, NPC, Spawn, "Oh... of course, of course! How much do you want? I only have a few silver on me at the moment, less than that probably.")
end

function ButYouJustSaid(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "You think a mere fine was all we had in store for Pie Man Sam? You're going to be working days and nights in each kitchen you stole from.", "CantWorkInKitchen")
	AddConversationOption(conversation, "Rondo was right, you fell for it big time.", "RondoWasRight")
	StartConversation(conversation, NPC, Spawn, "But you just sai- Goodness, that wasn't a bribe! Hah hah. It was just uh, I thought that was my fine! I was offering to pay my fine! How much is my fine?")
end

function CantWorkInKitchen(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Well if you can't work, I suppose you could always avoid the charges.", "HowDoIDoThat")
	AddConversationOption(conversation, "Rondo was right, you fell for it big time.", "RondoWasRight")
	StartConversation(conversation, NPC, Spawn, "Work? I can't work in a kitchen. The heat and the spices'll get to me. I'm allergic to herbs, I'll probably die! And me knees, sometimes me knees go out without warning! Terrible, terrible condition, you see. Me father had it too, runs in the blood I guess.")
end

function HowDoIDoThat(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "My pockets could use a little lining, if you know what I mean.", "ThatsWhatGotMeIntoTrouble")
	StartConversation(conversation, NPC, Spawn, "How? H-how do I do that?")
end

function ThatsWhatGotMeIntoTrouble(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Rondo was right, you fell for it big time.", "RondoWasRight")
	StartConversation(conversation, NPC, Spawn, "Of course! Certainly! Wait- WAIT! That's what got me into trouble last time. Oh, this is horrible. I wish someone would just take me away. I wish someone would just come and get me and take me away!")
end

function RondoWasRight(NPC, Spawn)
	SetStepComplete(Spawn, HALFLING_MENTOR_QUEST_5, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "What's that?", "SomeoneGotIntoShed")
	StartConversation(conversation, NPC, Spawn, "Rondo? That scoundrel! Gah, he sure knows how to get to me. You had me petrified there. I've been avoiding the guard. That is actually why I am out here. Can you believe they are blaming me for something I didn't even do?")
end

-----------------------------------------------------------------------------------------------------------------------
--					QUEST 1
-----------------------------------------------------------------------------------------------------------------------

function HelloHello(NPC, Spawn, conversation)
	AddConversationOption(conversation, "Is something wrong?", "IsSomethingWrong")
	StartConversation(conversation, NPC, Spawn, "Hello, hello! Nice day. Nice day to be out in the woods. That's why I'm out here, because it's a nice day!")
end

function IsSomethingWrong(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "What are they blamming you for?", "SomeoneGotIntoShed")
	StartConversation(conversation, NPC, Spawn, "Of course! These guards are after me. Blamming me for something I didn't even do, can you believe that?")
end

function SomeoneGotIntoShed(NPC, Spawn)
end