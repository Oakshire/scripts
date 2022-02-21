--[[
	Script Name	: SpawnScripts/WillowWood/DaelynTwinstar.lua
	Script Purpose	: Daelyn Twinstar <Half Elf Mentor>
	Script Author	: Scatman
	Script Date	: 2009.09.26
	Script Notes	: Updated by Jabantiz (4/22/2017)
--]]

local HALF_ELF = 6
local QUEST_1 = 218 -- A Split Heritage
local QUEST_2 = 219 -- A Joined Heritage 
local QUEST_3 = 220 -- Wisdom in the Wind
local QUEST_4 = 221 -- A Task for Daelyn

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	ProvidesQuest(NPC, QUEST_3)
	ProvidesQuest(NPC, QUEST_4)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
					OnQuest4(NPC, Spawn, conversation)
				elseif HasQuest(Spawn, QUEST_4) then
					OnQuest4(NPC, Spawn, conversation)
				else
					OnQuest3(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, QUEST_3) then
				OnQuest3(NPC, Spawn, conversation)
			else
				OnQuest2(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			OnQuest2(NPC, Spawn, conversation)
		else
			OnQuest1(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		WellMet(NPC, Spawn, conversation)
	end
end

function respawn(NPC)
	spawn(NPC)
end

function NotHalfElf(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar002.mp3", "", "no", 1099909668, 381545528, Spawn)
	AddConversationOption(conversation, "I see.")
	StartConversation(conversation, NPC, Spawn, "Oh, no, I am sorry. I thought you were half-elven.")
end

-----------------------------------------------------------------------------------------------------------------
--									QUEST 1
-----------------------------------------------------------------------------------------------------------------

function WellMet(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar001.mp3", "", "", 1953725707, 1008606084, Spawn)
	if GetRace(Spawn) == HALF_ELF then
		AddConversationOption(conversation, "Are you talking to me?", "TalkingToMe")
	else
		AddConversationOption(conversation, "Are you talking to me?", "NotHalfElf")
	end
	StartConversation(conversation, NPC, Spawn, "Well met, Ayr'Dal. Worry not, you will find friends here.")
end

function TalkingToMe(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar003.mp3", "", "", 2934615596, 2215632312, Spawn)
	AddConversationOption(conversation, "I am Ayr'Dal, I do not deny my heritage.", "IAmAyrDal")
	StartConversation(conversation, NPC, Spawn, "I most certainly am. Or are you not Ayr'Dal? Do you deny your heritage?")
end

function IAmAyrDal(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar004.mp3", "", "", 4046771549, 3800929012, Spawn)
	AddConversationOption(conversation, "My mother.", "Mother")
	AddConversationOption(conversation, "My father.", "Father")
	AddConversationOption(conversation, "I don't know.", "DontKnow")
	StartConversation(conversation, NPC, Spawn, "Which of your parents was elven?")
end

function Mother(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar005.mp3", "", "", 4194507196, 4125448896, Spawn)
	AddConversationOption(conversation, "Yeah, you're right.", "Next")
	AddConversationOption(conversation, "You're a little off base.", "Next")
	StartConversation(conversation, NPC, Spawn, "I wager you're a sentimentalist then.")
end

function Father(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Yeah, you're right.", "Next")
	AddConversationOption(conversation, "You're a little off base.", "Next")
	StartConversation(conversation, NPC, Spawn, "Then I bet you're very pratical. Like me.")
end

function DontKnow(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "No, I am proud of who I am.", "No")
	AddConversationOption(conversation, "Yes, sometimes.", "Sometimes")
	AddConversationOption(conversation, "All the time.", "AllTheTime")
	StartConversation(conversation, NPC, Spawn, "That is most unfortunate. Tell me, do you ever regret your heritage?")
end

function Next(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar007.mp3", "", "", 299196178, 1976594948, Spawn)
	AddConversationOption(conversation, "No, I am proud of who I am.", "No")
	AddConversationOption(conversation, "Yes, sometimes.", "Sometimes")
	AddConversationOption(conversation, "All the time.", "AllTheTime")
	StartConversation(conversation, NPC, Spawn, "I'm not always right, I just see patterns sometimes. Tell me, do you ever regret your heritage?")
end

function No(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar008.mp3", "", "", 2394224952, 3653556749, Spawn)
	AddConversationOption(conversation, "How did you do that?", "HowDidYouDoThat")
	StartConversation(conversation, NPC, Spawn, "That's good to hear. I used to feel shame when I thought of my heritage, but I've known to know better.")
end

function Sometimes(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "How did you do that?", "HowDidYouDoThat")
	StartConversation(conversation, NPC, Spawn, "You need to put a stop to that. I used to feel shame when I thought of my heritage, but I've known to know better.")
end

function AllTheTime(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "How did you do that?", "HowDidYouDoThat")
	StartConversation(conversation, NPC, Spawn, "Come on now. You must have some pride in who you are. I used to feel shame when I thought of my heritage, but I've known to know better.")
end

function HowDidYouDoThat(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar013.mp3", "", "", 2942083626, 3145034600, Spawn)
	AddConversationOption(conversation, "What can you teach me?", "WhatCanYouTeachMe")
	StartConversation(conversation, NPC, Spawn, "By experiencing the world. I believed a lot of lies when I was younger. The only thing that can dispel lies you've known all your life is experience, and not even that always works. I don't know your past, but I guarantee you have room to learn, we all do.")
end

function WhatCanYouTeachMe(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What must I do?", "WhatMustIDo")
	StartConversation(conversation, NPC, Spawn, "Nothing, really. I'm no teacher. I can only put you in situations that you may learn from. I can try to help guide you, of course, but most of the work will be yours.")
end

function WhatMustIDo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar014b.mp3", "", "", 3344113595, 3554399741, Spawn)
	AddConversationOption(conversation, "I will do so.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "I would like you to speak with two people and help them in their day-to-day business. Please seek out Gar Smolten and Lia Serene. Pay close attention to how they treat you. Gar should be behind the inn, speak with him first. Lia should be near the entrance to the Elddar Grove.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_1) == 8 or HasCompletedQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "I have.", "dlg_18_1")
	end
	AddConversationOption(conversation, "No, not yet.")
	StartConversation(conversation, NPC, Spawn, "Have you talked with Gar and Lia yet?")
end

function dlg_18_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar017.mp3", "", "", 2784530995, 3683555201, Spawn)
	AddConversationOption(conversation, "Well enough, I suppose.", "dlg_18_2")
	StartConversation(conversation, NPC, Spawn, "And how did it go?")
end

function dlg_18_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar018.mp3", "", "", 576149415, 3069756433, Spawn)
	AddConversationOption(conversation, "He was a little rude at first, but in the end he thanked me for my help.", "dlg_18_3")
	StartConversation(conversation, NPC, Spawn, "How did Gar treat you?")
end

function dlg_18_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar019.mp3", "", "", 3414444065, 1436595071, Spawn)
	AddConversationOption(conversation, "She was rather assuming, but also let me help her.", "dlg_18_4")
	StartConversation(conversation, NPC, Spawn, "And what of Lia?")
end

function dlg_18_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar020.mp3", "", "", 2333648415, 2569002098, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_18_5")
	StartConversation(conversation, NPC, Spawn, "It is unfortunate you were treated as such, but not surprising. But, and this is the sad part, there is a different reason I showed you this aspect of humans and elves. It is true we are oft-judged because of our race, but we tend to share that trait ourselves. ")
end

function dlg_18_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar020a.mp3", "", "", 3811087836, 3971066542, Spawn)
	AddConversationOption(conversation, "Is it hard to deal with?", "dlg_18_6")
	StartConversation(conversation, NPC, Spawn, "Because we are both human and elf, as the two you just spoke with, we sometimes are stuck with the worst aspects of either race. In this case their subdued distrust of our race. When we share those negative aspects we tend to assume humans and elves will look down upon us, and we tend to see examples of this even when it's not true.")
end

function dlg_18_6(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 8)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar021.mp3", "", "", 1513287886, 2136194240, Spawn)
	AddConversationOption(conversation, "What is that?", "dlg_18_7")
	StartConversation(conversation, NPC, Spawn, "That depends on what your past interactions with other races has taught you--and I don't mean just humans and elves. I will tell you that for me it is very hard to deal with. For others it is a not an issue. Let me show you another thing we must deal with.")
end

-------------------------------------------------------------------------------------------------------------
--										QUEST 2
-------------------------------------------------------------------------------------------------------------

function dlg_18_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar022.mp3", "", "", 3303644625, 2884478999, Spawn)
	AddConversationOption(conversation, "I will do this now.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "You will see. Go speak with Milo, he's probably in the scribe's shop. Ask him about Lyssia and hear what he has to say. Then, once you've talked with him, go speak with Lyssia. Speak with her of Milo and hear what she has to say.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function OnQuest2(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar023.mp3", "", "", 1987312518, 1009995787, Spawn)
	if (HasQuest(Spawn, QUEST_2) and GetQuestStep(Spawn, QUEST_2) == 3) or (HasCompletedQuest(Spawn, QUEST_2)) then
		AddConversationOption(conversation, "What about Lyssia and Milo?", "dlg_25_1")
	end
	AddConversationOption(conversation, "No, not yet.")
	StartConversation(conversation, NPC, Spawn, "Ah, you again. Do you have time to help me? Something unfortunate has happened.")
end

function dlg_25_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_2) then
		SetStepComplete(Spawn, QUEST_2, 3)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar024.mp3", "", "", 3886614999, 1370308488, Spawn)
	AddConversationOption(conversation, "Yes, I will find them.", "OfferQuest3")
	StartConversation(conversation, NPC, Spawn, "I look forward to speaking of them, but something more pressing has come up. I was writing an essay and did something foolish. I was taking a short break and forgot to weigh them down. When I got back, they had been strewn about by the wind. I would look for them myself but I found a dog chewing on a couple of pages and now must re-write them. Would you do me the favor of finding them?")
end

-------------------------------------------------------------------------------------------------------------
--										QUEST 3
-------------------------------------------------------------------------------------------------------------

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
end

function OnQuest3(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar026.mp3", "", "", 3561672616, 1164580371, Spawn)
	if (HasQuest(Spawn, QUEST_3) and GetQuestStep(Spawn, QUEST_3) == 6) or (HasCompletedQuest(Spawn, QUEST_3)) then
		AddConversationOption(conversation, "Yes, I have.", "dlg_28_1")
	end
	AddConversationOption(conversation, "No, I'm still looking.")
	StartConversation(conversation, NPC, Spawn, "Have you gathered my missing pages?")
end

function dlg_28_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar027.mp3", "", "", 2556350607, 3573421979, Spawn)
	AddConversationOption(conversation, "Glad to help.", "dlg_28_2")
	StartConversation(conversation, NPC, Spawn, "Oh! Wonderful. None of them very bad off, either. Thank you!")
end

function dlg_28_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar028.mp3", "", "", 3655869772, 4113159808, Spawn)
	AddConversationOption(conversation, "Milo praised Lyssia's beauty, wit, and wisdom. He considers himself very lucky to be with her. Lyssia was quite taken with Milo's strength and compassion. She considers him very empathic as well, even if he doesn't realize it himself.", "dlg_28_3")
	StartConversation(conversation, NPC, Spawn, "Anyway, where were we? Ah, yes, Lyssia and Milo. How did they speak of each other?")
end

function dlg_28_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar029.mp3", "", "", 1908930881, 2417556609, Spawn)
	AddConversationOption(conversation, "That makes sense.", "dlg_28_4")
	AddConversationOption(conversation, "I wish others saw it the same way.")
	StartConversation(conversation, NPC, Spawn, "What they love about each other are the strengths of their individual races. Obviously love isn't that simple, but I believe this situation can be simplified as such. These strengths are important to keep in mind for an Ayr'Dal, especially if you ever get hung-up about sharing the weaknesses of two races. The strengths of humans and elves don't make us better people than other races, just as the weaknesses of humans and elves don't make us any worse.")
end

function dlg_28_4(NPC, Spawn)
	if HasQuest(Spawn, QUEST_3) then
		SetStepComplete(Spawn, QUEST_3, 6)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar030.mp3", "", "", 1627998814, 4283869270, Spawn)
	AddConversationOption(conversation, "Sure. Where shall I deliver it?", "dlg_28_5")
	AddConversationOption(conversation, "Sorry, not right now.")
	StartConversation(conversation, NPC, Spawn, "Indeed. It is a hard life sometimes, but it is also a life that is immensely rewarding. That is part of what I wrote about in this essay. Now that it is complete, I would like a friend of mine to have a copy. How would you feel about taking it to him?")
end

-------------------------------------------------------------------------------------------------------------
--										QUEST 4
-------------------------------------------------------------------------------------------------------------

function dlg_28_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar031.mp3", "", "", 1295736180, 2860966906, Spawn)
	AddConversationOption(conversation, "I will do it.", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "Take this to Elvic Garrett, who has ventured into the Forest Ruins. He's probably hanging around just outside the ruins. I'm sure you'll both be able to help each other.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_4)
end

function OnQuest4(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar032.mp3", "", "", 664768434, 4226354942, Spawn)
	if HasCompletedQuest(Spawn, QUEST_4) then
		AddConversationOption(conversation, "Yes, I have.", "dlg_0_1")
	end
	AddConversationOption(conversation, "No, not yet.")
	StartConversation(conversation, NPC, Spawn, "Have you spoken with Elvic yet?")
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar033.mp3", "", "", 2806146323, 1271023417, Spawn)
	AddConversationOption(conversation, "I hope so.")
	StartConversation(conversation, NPC, Spawn, "Good, good, he can teach you much.")
end