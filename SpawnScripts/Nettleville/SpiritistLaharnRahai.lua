--[[
	Script Name		: SpawnScripts/Nettleville/SpiritistLaharnRahai.lua
	Script Purpose	: Spiritist Laharn Rahai 
	Script Author	: Scatman
	Script Date		: 2009.08.21
	Script Notes	: 
--]]

local CURIOUS_FINDINGS = 301
local REQUIRED_COMPONENTS = 302 -- was 39
local UNFORTUNATE_MISTAKES = 303 -- was 40

function spawn(NPC)
	ProvidesQuest(NPC, REQUIRED_COMPONENTS)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, CURIOUS_FINDINGS) then
		if HasCompletedQuest(Spawn, REQUIRED_COMPONENTS) then
			if HasCompletedQuest(Spawn, UNFORTUNATE_MISTAKES) then
				Say(NPC, "All is once again well. You are to be commended for your efforts.", Spawn)
			else
				PlayFlavor(NPC, "", "Quickly now, speak with Lakosha.", "", 1689589577, 4560189, Spawn)
			end
		elseif HasQuest(Spawn, REQUIRED_COMPONENTS) then
			if GetQuestStep(Spawn, REQUIRED_COMPONENTS) >= 1 and GetQuestStep(Spawn, REQUIRED_COMPONENTS) <= 3 then
				GetComponentsYetNo(NPC, Spawn)
			elseif GetQuestStep(Spawn, REQUIRED_COMPONENTS) == 4 then
				GetComponentsYetYes(NPC, Spawn)
			end
		else
			ListOfSubstancesYetYes(NPC, Spawn)
		end
	elseif HasQuest(Spawn, CURIOUS_FINDINGS) then
		if GetQuestStep(Spawn, CURIOUS_FINDINGS) == 1 then
			HereToAskAFavor(NPC, Spawn)
		elseif GetQuestStep(Spawn, CURIOUS_FINDINGS) == 2 then
			ListOfSubstancesYetNo(NPC, Spawn)
		elseif GetQuestStep(Spawn, CURIOUS_FINDINGS) == 3 then
			ListOfSubstancesYetYes(NPC, Spawn)
		else
			PlayFlavor(NPC, "", "Quickly now, speak with Lakosha.", "", 1689589577, 4560189, Spawn)
		end
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/spiritist_laharn_rahai/qey_village01/quests/laharn_rahai/laharn_rahai001.mp3", "Sometimes there is little we can do to prevent tragedy. Other times, that which we do need to do is relatively little.", "", 1689589577, 4560189, Spawn)
	end
end

--------------------------------------------------------------------------------------------------------------------
--								 QUEST 2
--------------------------------------------------------------------------------------------------------------------

function HereToAskAFavor(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/spiritist_laharn_rahai/qey_village01/quests/laharn_rahai/laharn_rahai001.mp3", "", "", 1313052279, 289870513, Spawn)
	AddConversationOption(conversation, "I am here to ask a favor.", "dlg_20_1")
	StartConversation(conversation, NPC, Spawn, "Sometimes there's little we can do to prevent tragedy. Other times, that which we do need to do is relatively little.")
end

function dlg_20_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/spiritist_laharn_rahai/qey_village01/quests/laharn_rahai/laharn_rahai002.mp3", "", "", 2480103971, 170395438, Spawn)
	AddConversationOption(conversation, "Lakosha Maera had me collect some soil. In it she found something that concerned her. She asked that I bring it to you so that you can study it and confirm or dispel her worries.", "dlg_20_2")
	StartConversation(conversation, NPC, Spawn, "Of course, what do you need?")
end

function dlg_20_2(NPC, Spawn)
	SetStepComplete(Spawn, CURIOUS_FINDINGS, 1)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/spiritist_laharn_rahai/qey_village01/quests/laharn_rahai/laharn_rahai003.mp3", "", "", 2388634849, 375902687, Spawn)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Yes, I can do that. However, the human alchemists here would be much faster at determining the components. We should attempt to enlist their help first. Go speak with the Alchemist's assistant, Gunta. I am sure she can be found in the Scribe's shop. Bring the list of identified substances back to me and we'll see if we can put Lakosha's worries to rest.")
end

function ListOfSubstancesYetNo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
			
	AddConversationOption(conversation, "No, not yet.")
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/spiritist_laharn_rahai/qey_village01/quests/laharn_rahai/laharn_rahai004.mp3", "", "", 910991904, 661476855, Spawn)
	StartConversation(conversation, NPC, Spawn, "Do you have a list of the substances?")
end

function ListOfSubstancesYetYes(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "No, she would not help.", "dlg_22_1")
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/spiritist_laharn_rahai/qey_village01/quests/laharn_rahai/laharn_rahai004.mp3", "", "", 910991904, 661476855, Spawn)
	StartConversation(conversation, NPC, Spawn, "Do you have a list of the substances?")
end

function dlg_22_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/spiritist_laharn_rahai/qey_village01/quests/laharn_rahai/laharn_rahai005.mp3", "", "", 3616363331, 324641015, Spawn)
	AddConversationOption(conversation, "What do we do now?", "dlg_22_2")
	StartConversation(conversation, NPC, Spawn, "That is unfortunate, and yet comes without too much surprise. We are often alone in our endeavors. It makes us stronger, however.")
end

function dlg_22_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/spiritist_laharn_rahai/qey_village01/quests/laharn_rahai/laharn_rahai006.mp3", "", "", 1807481255, 2577515001, Spawn)
	AddConversationOption(conversation, "What do I need to collect?", "dlg_22_3")
	StartConversation(conversation, NPC, Spawn, "I can still identify the substance, but it will take some extra work. I'll need you to collect a few things while I prepare what I already have.")
end

function dlg_22_3(NPC, Spawn)
	if HasQuest(Spawn, CURIOUS_FINDINGS) then
		SetStepComplete(Spawn, CURIOUS_FINDINGS, 3)
	end

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/spiritist_laharn_rahai/qey_village01/quests/laharn_rahai/laharn_rahai007.mp3", "", "", 790033688, 3434236139, Spawn)
	AddConversationOption(conversation, "I can do this.", "OfferQuest3")
	StartConversation(conversation, NPC, Spawn, "First you will need some Reactive Kesmith. Travel back to the Alchemist in the Scribe's shop, he will sell you some. You will also need a Litsuth Bag. Though this is an object of our people, you can still buy it from a human. On the western end of Nettleville you will find Tailor Ehuraa Rotherham, she will sell you the bag. Finally you will need some Selkie Mushrooms. You can find these in the ferryway with the mariner's bells, also in western Nettleville.")
end

---------------------------------------------------------------------------------------------------------------------
--		QUEST 3
---------------------------------------------------------------------------------------------------------------------

function GetComponentsYetNo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/spiritist_laharn_rahai/qey_village01/quests/laharn_rahai/laharn_rahai008.mp3", "", "", 1937447033, 532896484, Spawn)
	AddConversationOption(conversation, "No, I do not.", "dlg_25_1")
	StartConversation(conversation, NPC, Spawn, "Do you have the necessary components?")
end

function GetComponentsYetYes(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/spiritist_laharn_rahai/qey_village01/quests/laharn_rahai/laharn_rahai008.mp3", "", "", 1937447033, 532896484, Spawn)
	AddConversationOption(conversation, "Yes, I do.", "dlg_27_1")
	StartConversation(conversation, NPC, Spawn, "Do you have the necessary components?")
end

function dlg_27_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/spiritist_laharn_rahai/qey_village01/quests/laharn_rahai/laharn_rahai009.mp3", "", "", 3568726927, 50566719, Spawn)
	AddConversationOption(conversation, "It was gathered from around Nettleville. I was collecting it as part of a ritual Lakosha was teaching me.", "dlg_27_2")
	StartConversation(conversation, NPC, Spawn, "Good.I'll perform the test now, this should not take long. Tell me, what was this soil from and why did Lakosha want it tested?")
end

function dlg_27_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/spiritist_laharn_rahai/qey_village01/quests/laharn_rahai/laharn_rahai010.mp3", "", "", 73665412, 2710981331, Spawn)
	AddConversationOption(conversation, "She said the soil suggested someone was in the middle of a Pa'Rok ceremony, but that there were other compounds that should not be present, and was worried that the other compounds may affect the ceremony.", "dlg_27_3")
	StartConversation(conversation, NPC, Spawn, "Ah, yes, I am familiar with it. Why did she want it tested?")
end

function dlg_27_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/spiritist_laharn_rahai/qey_village01/quests/laharn_rahai/laharn_rahai011.mp3", "", "", 3413002401, 2109013864, Spawn)
	AddConversationOption(conversation, "Why is that?", "dlg_27_7")
	AddConversationOption(conversation, "What is a Pa'Rok ceremony?", "dlg_27_4")
	StartConversation(conversation, NPC, Spawn, "She has keen senses, Imolau. A corrupted Pa'Rok ceremony would be a very bad thing.")
end

function dlg_27_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/spiritist_laharn_rahai/qey_village01/quests/laharn_rahai/laharn_rahai012.mp3", "", "", 329280246, 3861598666, Spawn)
	AddConversationOption(conversation, "What do you feel?", "dlg_27_5")
	StartConversation(conversation, NPC, Spawn, "It is an old custom, not often practiced anymore. Still, some cling to it--rightly so, I believe--for personal reasons. It is a way that one mourns for the deceased. Many feel it brings a closure that cannot be had otherwise.")
end

function dlg_27_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/spiritist_laharn_rahai/qey_village01/quests/laharn_rahai/laharn_rahai013.mp3", "", "", 2917173738, 1397380776, Spawn)
	AddConversationOption(conversation, "Do you mean that it is all in the mind of the person performing the ceremony?", "dlg_27_6")
	StartConversation(conversation, NPC, Spawn, "I support anything--within reason--that heals. Pa'Rok does that, and so I believe it is good. Some feel that the ceremony is too long or archaic to do any good. Those who think as much would not receive any help from Pa'Rok anyway. Everyone copes in their own ways, some can accept the help Pa'Rok offers while others cannot.")
end

function dlg_27_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/spiritist_laharn_rahai/qey_village01/quests/laharn_rahai/laharn_rahai014.mp3", "", "", 4079786531, 4103037420, Spawn)
	AddConversationOption(conversation, "Why is that?", "dlg_27_7")
	StartConversation(conversation, NPC, Spawn, "No, not by a long shot. I cannot explain it, but the one doing the ceremony knows and feels what they are meant to feel. Some say they commune with the deceased, though most remember very little. This is how one knows if the ceremony is corrupted; if it is all clearly remembered and there is no sense of peace when it is over. Corrupted ceremonies are very bad.")
end

function dlg_27_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/spiritist_laharn_rahai/qey_village01/quests/laharn_rahai/laharn_rahai015.mp3", "", "", 3229185104, 3474423830, Spawn)
	AddConversationOption(conversation, "What did you find?", "dlg_27_8")
	StartConversation(conversation, NPC, Spawn, "A corrupted ceremony means time lost, and mourning needlessly repeated. Ah, the test is done.")
end

function dlg_27_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/spiritist_laharn_rahai/qey_village01/quests/laharn_rahai/laharn_rahai016.mp3", "", "", 681386269, 481662717, Spawn)
	AddConversationOption(conversation, "Negative consequences?", "dlg_27_9")
	StartConversation(conversation, NPC, Spawn, "This is dire. The soil had components suggesting the Pa'Rok ceremony was on its third day. On the fourth day the final soil, specially prepared by a kerra learned in such things, will be added. The soil from the first day, however, seems very ill prepared and has substances that I don't even recognize in it. This will corrupt the ceremony, that is certain, but it may have negative consequences beyond that.")
end


function dlg_27_9(NPC, Spawn)
	SetStepComplete(Spawn, REQUIRED_COMPONENTS, 4)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/spiritist_laharn_rahai/qey_village01/quests/laharn_rahai/laharn_rahai017.mp3", "", "", 3728181169, 856089258, Spawn)
	AddConversationOption(conversation, "All right, thank you for your help.")
	StartConversation(conversation, NPC, Spawn, "The Pa'Rok summons the spirits of the dead. To alter the prepared soil in any way threatens the integrity of that link to the dead. They may not be summoned at all, the wrong soul may be summoned, only a portion of the soul may be summoned, there is no way to know what will happen. Understand, this is not something we study, it is something that must always be avoided. Please, return to Lakosha. Tell her what I have told you, she will guide you.")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, REQUIRED_COMPONENTS)
end