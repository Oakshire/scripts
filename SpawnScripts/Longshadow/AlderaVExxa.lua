--[[
	Script Name	: SpawnScripts/Longshadow/AlderaVExxa.lua
	Script Purpose	: Aldera V'Exxa <Dark Elf Mentor>
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Race ID's
local DARK_ELF = 1

-- Quest ID's
local QUEST_1 = 335 -- A Clear Understanding
local QUEST_2 = 336 -- A Lesson to Learn
local QUEST_3 = 337 -- Brewing Trouble
local QUEST_4 = 338 -- A Lesson Learned
local QUEST_5 = 339 -- Meet the Custodian (listed under Graveyard)

-- Item ID's
local POISONED_LOAF_OF_BREAD = 10496

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	ProvidesQuest(NPC, QUEST_3)
	ProvidesQuest(NPC, QUEST_4)
	ProvidesQuest(NPC, QUEST_5)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
					if HasCompletedQuest(Spawn, QUEST_5) then
						Say(NPC, "There is nothing left for you here.", Spawn)
					elseif HasQuest(Spawn, QUEST_5) then
						Say(NPC, "Go now to Custodian Zaddar Sullissia in the Graveyard, he is waiting for you.", Spawn)
					else
						OfferQuest5(NPC, Spawn)
					end
				elseif HasQuest(Spawn, QUEST_4) then
					OnQuest4(NPC, Spawn, conversation)
				else
					IKnowNow(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, QUEST_3) then
				OnQuest3(NPC, Spawn, conversation)
			else
				BePatient(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			OnQuest2(NPC, Spawn, conversation)
		else
			RevengeSweet(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		if GetRace(Spawn) == DARK_ELF then
			Greetings(NPC, Spawn, conversation)
		else
			Say(NPC, "You're no dark elf!", Spawn)
		end
	end
end

-------------------------------------------------------------------------------------------------------------------
--						QUEST 1
-------------------------------------------------------------------------------------------------------------------

function Greetings(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_001.mp3", "", "", 85248466, 2292456525, Spawn)
	AddConversationOption(conversation, "I am not bewildered. I am in a hurry. There is a difference, so what is it that you want of me already?", "dlg_0_1")
	AddConversationOption(conversation, "If I seem ill-tempered, it's because I'm being accosted by a complete stranger.", "dlg_0_1")
	AddConversationOption(conversation, "Sorry, I am in a hurry right now. Maybe I will come back later.")
	StartConversation(conversation, NPC, Spawn, "Greetings.  You seem a bit bewildered, but worry not; I can sense the hate in you. It is a wild, flowing hatred, but we can temper that, and you, into a creature of Innoruuk's vengeance still. ")
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_002.mp3", "", "", 2316308522, 1859341999, Spawn)
	AddConversationOption(conversation, "My apologies, Aldera.  What advice would you give on harnessing the strength of the Teir'Dal? ", "dlg_0_2")
	AddConversationOption(conversation, "If you say so. However, I am interested in becoming a creature of Innoruuk's vengeance as you mentioned earlier.", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Do not speak with such a sharp tongue. Teir'Dal may be above the rest of Norrath's people, but we are still equals unto each other. As such, you should show respect, lest you dishonor yourself.  My name is Aldera.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_017.mp3", "", "", 2479816263, 523601088, Spawn)
	AddConversationOption(conversation, "You mean this slum?", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "You will learn all that you need to know...in time.  Before we begin, it is important for you to know the inner workings of Longshadow Alley, our home in Freeport.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_018.mp3", "", "", 1618945391, 1224746522, Spawn)
	AddConversationOption(conversation, "Very true.  Tell me about Longshadow Alley, then.", "dlg_0_4")
	AddConversationOption(conversation, "I am very patiently waiting for you to continue.", "dlg_0_4")
	StartConversation(conversation, NPC, Spawn, "It is not a beautiful place, that is true, but we make do.  We Teir'Dal are patient and vigilant, for opportunities can arise suddenly and we must be prepared for them. Those who are unwilling or unable to restrain themselves may end up living in this slum forever.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_019.mp3", "", "", 3051373305, 2764364895, Spawn)
	AddConversationOption(conversation, "I agree.", "OfferQuest1")
	AddConversationOption(conversation, "Unfortunately, I haven't got time at the moment.")
	StartConversation(conversation, NPC, Spawn, "Good.  For though we live here by decree of the Overlord, the Teir'Dal will rise again for we are the children of Innoruuk -- we are his chosen.  And those who stand against us, thinking us weak, will find themselves unprepared.  Preparedness includes knowing one's way around a neighborhood, whether by light or dark.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_1) == 5 then
		AddConversationOption(conversation, "The Koada'Dal should pay for what they did to us.", "KoadaDalShouldPay")
		StartConversation(conversation, NPC, Spawn, "As you see, Longshadow Alley and its passages wind, but the Teir'Dal do not fear these things. Long ago, our people lived in Neriak and through Koada'Dal trickey, it was sealed away from those of us on the surface.")
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/qst_aldera_vexxa_not_done_207adfdc.mp3", "Come back when you are finished with the task I gave you.", "", 2514310256, 1161188523, Spawn)
	end
end

function KoadaDalShouldPay(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Revenge can be sweet.", "RevengeSweet")
	StartConversation(conversation, NPC, Spawn, "And someday, they will. Remember: we are the patient ones. Though fruit may ripen off the vine, it is much tastier when picked at its ripest. So is with our opportunities for revenge. When they are ripe, we shall pluck them.")
end

function RevengeSweet(NPC, Spawn, conversation)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 5)
	end
	
	if conversation == nil then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
	end

	AddConversationOption(conversation, "I want to learn the Teir'Dal's ability to control the dark arts.", "DarkArts")
	StartConversation(conversation, NPC, Spawn, "We must remain vigilant against the enemies of the virtuous: sloth, greed, and impatience. We will choose the time and place to unveil ourselves. In the way, we control the outcome, regardless of the cause.")
end

-------------------------------------------------------------------------------------------------------------------
--						QUEST 2
-------------------------------------------------------------------------------------------------------------------

function DarkArts(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Who is Teah? What dishonor do you speak of?", "WhoIsTeah")
	StartConversation(conversation, NPC, Spawn, "I will direct you to that later. First, you must learn what it is to be a Teir'Dal. You must realize that you cannot show your contempt for another of your kind so openly to them. Doing so will only bring disrespect to yourself like it did to that sloth, Teah.")
end

function WhoIsTeah(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "So, if everyone knows he's a thief, why don't you do something about it?", "KnowsThief")
	StartConversation(conversation, NPC, Spawn, "Teah is a Teir'Dal who has lost all sense of subtlety. He thinks only of stuffing himself with whatever food he can pilfer. I am sure now he is even trying to find a way to steal more food from our merchants.")
end

function KnowsThief(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What do you want me to do?", "WhatToDo")
	AddConversationOption(conversation, "Maybe we can work on this a bit later; I am tied up at the moment.")
	StartConversation(conversation, NPC, Spawn, "I believe you may be right. It is time to teach him a lesson. A true Teir'Dal would never be so blatant about their actions. Just because we are stuck in this dingy alley does not mean we can act like common thieves.")
end

function WhatToDo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'll return with the Shadow's Kiss for you.", "OfferQuest2")
	AddConversationOption(conversation, "Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "For now, go find Shadow's Kiss, a fungus that grows around town. You may want to check near the entrance to the Thieves' Way for it. Collect some of this for me and come back here so we can discuss what needs to be done next.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function OnQuest2(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_2) == 2 then
		SetStepComplete(Spawn, QUEST_2, 2)
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_015.mp3", "", "", 2193463922, 2436480205, Spawn)
		AddConversationOption(conversation, "But what about my training?", "BePatient")
		AddConversationOption(conversation, "I will return in a moment then.")
		StartConversation(conversation, NPC, Spawn, "Ahh good you have it! I will begin mixing this right away. Speak to me again in a moment so I can concentrate on mixing this.")
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/qst_aldera_vexxa_not_done_207adfdc.mp3", "Come back when you are finished with the task I gave you.", "", 2514310256, 1161188523, Spawn)
	end
end

-------------------------------------------------------------------------------------------------------------------
--						QUEST 3
-------------------------------------------------------------------------------------------------------------------

function BePatient(NPC, Spawn, conversation)
	if conversation == nil then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_007.mp3", "", "", 1365697342, 971507038, Spawn)
	AddConversationOption(conversation, "You seem fairly handy with that.", "dlg_1_2")
	AddConversationOption(conversation, "I'm sorry for interrupting.  Patience is difficult for me.")
	StartConversation(conversation, NPC, Spawn, "Remember to be patient, " .. GetName(Spawn) .. ".  Fortunately, Shadow's Kiss is a soft substance and crushes quickly. It is almost ready to be distilled.  What is it you would like to know that cannot wait?")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_008.mp3", "", "", 3324572671, 2665510191, Spawn)
	AddConversationOption(conversation, "Very true.", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "Patience can be learned, but you should realize by now that our keen intellect lends itself well to studies such as these.  Alchemy is something any Teir'Dal can master, if the desire is present.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_009.mp3", "", "", 1554086941, 3193226131, Spawn)
	AddConversationOption(conversation, "We are fortunate, indeed.", "dlg_1_4")
	StartConversation(conversation, NPC, Spawn, "Throughout all of our history, our ranks have always included the greatest members of the arcane societies, especially concerning necromantic magic.  It was Innoruuk's gift to us after all.")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_010.mp3", "", "", 4208003561, 3975044464, Spawn)
	AddConversationOption(conversation, "Kalraath is just going to give this to me for free?", "OfferQuest3")
	AddConversationOption(conversation, "I will have to seek out Kalraath later, I do not have time for it now.")
	StartConversation(conversation, NPC, Spawn, "Enough of that though, this is done distilling already.  You must see Kalraath; he is another Teir'Dal here in Longshadow Alley.  He likes to watch the people who pass back and forth through the gate to North Freeport. When you find him, let him know that I need an ingestible medium for the Shadow's Kiss you harvested.")
end

function OfferQuest3(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
end

function OnQuest3(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_3) == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_012.mp3", "", "", 1172068349, 1938187919, Spawn)
		AddConversationOption(conversation, "I told him the truth; you are teaching me the proper ways to be a Teir'Dal.", "dlg_3_1")
		AddConversationOption(conversation, "To be honest, I am not ready to continue this quite yet.")
		StartConversation(conversation, NPC, Spawn, "Good, you are back. I need not ask if you told him what we are mixing with it, right?")
	elseif GetQuestStep(Spawn, QUEST_3) == 3 then
		dlg_3_2(NPC, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/qst_aldera_vexxa_not_done_207adfdc.mp3", "Come back when you are finished with the task I gave you.", "", 2514310256, 1161188523, Spawn)
	end
end

function dlg_3_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_3, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_013.mp3", "", "", 2737459827, 1482233190, Spawn)
	AddConversationOption(conversation, "What will happen next?", "dlg_3_2")
	AddConversationOption(conversation, "I will give you the preparation time you need, then return so we can finish this.")
	StartConversation(conversation, NPC, Spawn, "He would be hard pressed to find a more true statement than that.  Let me mix these together before you take these to Lynsia.  Her shop is set up near the Destroyed Knowledge Portal; Teah has frequently stolen from her and the time is ripe to take action.")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_021.mp3", "", "", 2067404292, 2649687751, Spawn)
	AddConversationOption(conversation, "What exactly do you want to know?", "dlg_3_3")
	StartConversation(conversation, NPC, Spawn, "Before I give this to you, I want to be sure you remember all that we have discussed about this.")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_034.mp3", "", "", 1004106866, 1845074140, Spawn)
	AddConversationOption(conversation, "A Teir'Dal named Teah.", "dlg_3_4")
	AddConversationOption(conversation, "A Teir'Dal named Kalraath.", "dlg_3_5")
	AddConversationOption(conversation, "A Teir'Dal named Astara.", "dlg_3_5")
	AddConversationOption(conversation, "Maybe we can do this later. I am in a bit of hurry right now.")
	StartConversation(conversation, NPC, Spawn, "First, who is it that we are after?")
end

function dlg_3_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_022.mp3", "", "", 2302640409, 2008647580, Spawn)
	AddConversationOption(conversation, "Because thats what Teir'Dal do?", "dlg_3_5")
	AddConversationOption(conversation, "Because Teah brings shame to the name Teir'Dal?", "dlg_3_15")
	AddConversationOption(conversation, "Because I have nothing else better to do?", "dlg_3_5")
	AddConversationOption(conversation, "Maybe we can do this later. I am in a bit of hurry right now.")
	StartConversation(conversation, NPC, Spawn, "Now, why exactly are we doing this?")
end

function dlg_3_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_033.mp3", "", "", 898006331, 3816257793, Spawn)
	AddConversationOption(conversation, "Fine, let's just be done with this already.", "dlg_3_3")
	StartConversation(conversation, NPC, Spawn, "Not exactly, why don't we run over this again.")
end

function dlg_3_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_023.mp3", "", "", 1198802346, 4122362903, Spawn)
	AddConversationOption(conversation, "I need to leave it at the vendor booth where you can purchase food.", "dlg_3_24")
	AddConversationOption(conversation, "I need to leave it at the docks. We decided the guards may be more deserving than Teah after all.", "dlg_3_3")
	AddConversationOption(conversation, "I need to give it back to Kalraath to further poison it.", "dlg_3_3")
	StartConversation(conversation, NPC, Spawn, "Good, I am glad you agree. That sloth of a man does nothing but degrade our race. Now where do you need to leave this?")
end

function dlg_3_24(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_3, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_035.mp3", "", "", 4107808894, 2985104549, Spawn)
	AddConversationOption(conversation, "I understand.", "IKnowNow")
	AddConversationOption(conversation, "Interesting.  Well, I'll be back later.")
	StartConversation(conversation, NPC, Spawn, "You are correct. Although it would be amusing if the wrong person ate this. I am sure you do not want to collect all the parts again, so I had to be certain you would know what to do.")
end

-------------------------------------------------------------------------------------------------------------------------------------------
--								QUEST 4
-------------------------------------------------------------------------------------------------------------------------------------------

function dlg_3_25(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_036.mp3", "", "", 4060114825, 325379989, Spawn)
	AddConversationOption(conversation, "We Teir'Dal should always calculate the costs.", "dlg_3_26")
	StartConversation(conversation, NPC, Spawn, "I'm glad, for though this matter may seem trivial, there are often underlying reasons why we must do what we must do.  In his indolence, Teah had stolen something without calculating its true cost.  By thinking only of the moment and not of the future, he has sealed his doom.")
end

function IKnowNow(NPC, Spawn, conversation)
	if conversation == nil then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_024.mp3", "", "", 2075867357, 796948736, Spawn)
	AddConversationOption(conversation, "I am ready if you are.", "OfferQuest4")
	AddConversationOption(conversation, "You mean we finally get to kill him?", "OfferQuest4")
	AddConversationOption(conversation, "Let me finish something else before we begin.")
	StartConversation(conversation, NPC, Spawn, "I know now that you understand how a proper Teir'Dal should act and are ready to teach Teah his first, and final, lesson. One that would not be necessary if he had learned that the Teir'Dal are above sloth and greed.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_4)
end

function OnQuest4(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_4) == 1 then
		-- Poisoned Loaf of Bread
		if not HasItem(Spawn, POISONED_LOAF_OF_BREAD) then
			SummonItem(Spawn, POISONED_LOAF_OF_BREAD)
			SendMessage(Spawn, "You receive 1 Poisoned Loaf of Bread")
		end
		AddConversationOption(conversation, "Ok.")
		StartConversation(conversation, NPC, Spawn, "I know now that you understand and are ready to teach Teah his first, and final, lesson. One that would not be necessary if he had learned that the Teir'Dal are above sloth and greed.")
	elseif GetQuestStep(Spawn, QUEST_4) == 2 then
		SetStepComplete(Spawn, QUEST_4, 2)
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_031.mp3", "", "", 150259067, 4055890326, Spawn)
		AddConversationOption(conversation, "I do what I can to get rid of scum like that.", "OfferQuest5")
		AddConversationOption(conversation, "Finally, it took us long enough.", "OfferQuest5")
		StartConversation(conversation, NPC, Spawn, "Good good, I have heard of Teah's departure from this world. Excellent work. ")
	end
end

-------------------------------------------------------------------------------------------------------------------------
--								QUEST 5
-------------------------------------------------------------------------------------------------------------------------

function OfferQuest5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_5)
end

function dlg_3_28(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_026.mp3", "", "", 2507386365, 667468455, Spawn)
	AddConversationOption(conversation, "There is nothing wrong with that. We all wish to return to our true home.", "dlg_3_29")
	StartConversation(conversation, NPC, Spawn, "Know that the Teir'Dal are a divided people. There are Teir'Dal who, while not happy, can abide living in Freeport while we work towards regaining our past glories. There are also the Thexians, who believe that staying anywhere other than Neriak shows great weakness. They actively strive to find Neriak as we speak.")
end

function dlg_3_29(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_027.mp3", "", "", 3730174469, 543687528, Spawn)
	AddConversationOption(conversation, "Good point.", "dlg_3_30")
	AddConversationOption(conversation, "What wrong with being a zealot?", "dlg_3_30")
	StartConversation(conversation, NPC, Spawn, "Ah, but you see, many view the Thexians as zealots, impatiently rushing toward the unknown.  Most do not return. Trust in patience:  approach the matter slowly, when you have more strength and knowledge on the matter rather than throwing your life away.")
end

function dlg_3_30(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_028.mp3", "", "", 941228334, 1597894001, Spawn)
	AddConversationOption(conversation, "Yes, I am ready to begin.", "dlg_3_31")
	StartConversation(conversation, NPC, Spawn, "This is all my view on the matter and as a fellow Teir'Dal, I feel obliged to share it with you. You must choose which path to follow in the end, if any.  In any event, your current path leads you to take one of these specially baked loaves of bread from behind me to Lynsia's booth.")
end

function dlg_3_31(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_029.mp3", "", "", 4238359707, 1850134526, Spawn)
	AddConversationOption(conversation, "I will be back when I have put our lesson plan in its place.")
	StartConversation(conversation, NPC, Spawn, "Place the bread on Lynsia's counter.  I have already sent an anonymous message to her to be sure she does not add it to her normal stock. With the blessing of Innoruuk, Teah will find the food shortly, and well, he will learn the hard way that sloth and greed are unbecoming to the Teir'Dal.")
end

