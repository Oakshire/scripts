--[[
	Script Name	: SpawnScripts/Castleview/VindainGreenfaith.lua
	Script Purpose	: Vindain Greenfaith <High Elf Mentor>
	Script Author	: Scatman
	Script Date	: 2009.10.02
	Script Notes	: Updated by Jabantiz (4/24/2017)
--]]

local HIGHELF = 8
local ComponentsOfGrowth = 223
local SowingBeauty = 224
local TargetingCorruption = 225
local TheCommune = 226
local SendingWord = 227

function spawn(NPC)
	ProvidesQuest(NPC, ComponentsOfGrowth)
	ProvidesQuest(NPC, SowingBeauty)
	ProvidesQuest(NPC, TargetingCorruption)
	ProvidesQuest(NPC, TheCommune)
	ProvidesQuest(NPC, SendingWord)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	if GetRace(Spawn) == HIGHELF then
		Begin(NPC, Spawn)
	else
		NotHighElf(NPC, Spawn)
	end
end

function NotHighElf(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/qst_vindain_nothighelf_57692d23.mp3", "The Koada'Dal need heroes and leaders like myself, now more than ever. But I am here for them, my friend, and cannot help you now.", "", 2055920001, 877280336, Spawn)
end

function Begin(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, ComponentsOfGrowth) then
		if HasCompletedQuest(Spawn, SowingBeauty) then
			if HasCompletedQuest(Spawn, TargetingCorruption) then
				if HasCompletedQuest(Spawn, TheCommune) then
					if HasCompletedQuest(Spawn, SendingWord) then
						SpokenWithAdalinYet(NPC, Spawn, conversation)
					elseif HasQuest(Spawn, SendingWord) then
						SpokenWithAdalinYet(NPC, Spawn, conversation)
					else
						SpokenWithSpiritYet(NPC, Spawn, conversation)
					end
				elseif HasQuest(Spawn, TheCommune) then
					SpokenWithSpiritYet(NPC, Spawn, conversation)
				else
					GreenMistCleared(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, TargetingCorruption) then
				GreenMistCleared(NPC, Spawn, conversation)
			else
				PlantedBushesYet(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, SowingBeauty) then
			PlantedBushesYet(NPC, Spawn, conversation)
		else
			GatheredComponentsYet(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, ComponentsOfGrowth) then
		GatheredComponentsYet(NPC, Spawn, conversation)
	else
		KoadaDalNeedYou(NPC, Spawn, conversation)
	end
end

----------------------------------------------------------------------------------------------------------------
--		QUEST 1
----------------------------------------------------------------------------------------------------------------

function KoadaDalNeedYou(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain001.mp3", "", "", 3275063525, 1876910304, Spawn)
	AddConversationOption(conversation, "I do not deny my help.", "DoNotDeny")
	AddConversationOption(conversation, "Koada'Dal?", "KoadaDal")
	AddConversationOption(conversation, "I will choose when and where to offer my help.")
	StartConversation(conversation, NPC, Spawn, "The Koada'Dal need you, do you deny them your help?")
end

function DoNotDeny(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain005.mp3", "", "", 2071218193, 1536623710, Spawn)
	AddConversationOption(conversation, "Did you fight?", "DidYouFight")
	StartConversation(conversation, NPC, Spawn, "I am glad to hear that. In ages past the Koada'Dal have rallied to Tunare's aid. We have fought--and died--in countless wars against forces both small and great. This was our charge and we accepted it without hesitation or regret.")
end

function DidYouFight(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain006.mp3", "", "", 558239952, 3089092887, Spawn)
	AddConversationOption(conversation, "How will we bring about a rebirth for our people?", "RebirthForOurPeople")
	AddConversationOption(conversation, "Did you need help or not?", "DidYouNeedHelp")
	StartConversation(conversation, NPC, Spawn, "Not in any of the great wars, no. Though I had more than my share of battle. And now, here we are, a displaced people. We rest within the walls of Qeynos as if refugees. And, though it is a bitter taste to even speak it, we are refugees. Our time has gone and not yet come again, " .. GetName(Spawn) .. ".")
end

function RebirthForOurPeople(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain007.mp3", "", "", 2133745057, 422152869, Spawn)
	AddConversationOption(conversation, "How do you cope?", "HowDoYouCope")
	StartConversation(conversation, NPC, Spawn, "That is not for me to know or plan, I leave that to the scholars. Me, all I can do is wait for our time. It is a heavy burden on one's soul, to wait for a time you may not ever see.")
end

function HowDoYouCope(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain008.mp3", "", "", 2132206040, 1773497371, Spawn)
	AddConversationOption(conversation, "The reasons alone mean that those who see it will be helped.", "TheReasonsAlone")
	StartConversation(conversation, NPC, Spawn, "Heh... I try to bring my people closer to themselves. It is a thankless duty, and may not even help, but it is all I can do.")
end

function TheReasonsAlone(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain009.mp3", "", "", 3987444274, 3750842326, Spawn)
	AddConversationOption(conversation, "I would like to help out around here.", "IWouldLikeToHelp")
	AddConversationOption(conversation, "Who are your contacts?", "WhoAreYourContacts")
	AddConversationOption(conversation, "Not now, thanks.")
	StartConversation(conversation, NPC, Spawn, "I am glad to hear you say that. Would you like to give some effort of your own to help our people? There are tasks around here that must be attended to, or I have contacts if you're interested in something more adventurous. What say you?")
end

function IWouldLikeToHelp(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain011.mp3", "", "", 2903193382, 1971757298, Spawn)
	AddConversationOption(conversation, "Sure, I am willing to do that.", "SureIAmWilling")
	AddConversationOption(conversation, "What are Green Wisps?", "DidYouNeedHelp")
	StartConversation(conversation, NPC, Spawn, "That is good. Our people are not as strong in spirit as we once were. Every little thing we do helps, or so I believe. One plan I have had to help our people is to plant more Green Wisp bushes around Castleview Hamlet. I believe this would be a perfect job for you, what do you say?")
end

function SureIAmWilling(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain013.mp3", "", "", 344140216, 1983346323, Spawn)
	AddConversationOption(conversation, "And the blessed water?", "AndTheBlessedWater")
	StartConversation(conversation, NPC, Spawn, "Good. You will need Green Wisp seeds, some enriched soil, and blessed water. The seeds you can get from the Green Wisps that surround the Fountain of Valor. The soil you can get from a barrel that holds it, northwest of the armor shop on the level above this one.")
end

function AndTheBlessedWater(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain014.mp3", "", "", 1499994650, 3739794099, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Collect some blessed water from the Fountain of Valor. Examine the flask while near it to do so.")
end

function KoadaDal(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain002.mp3", "", "", 1275465348, 3317665592, Spawn)
	AddConversationOption(conversation, "I have not, what does it mean?", "WhatDoesItMean")
	AddConversationOption(conversation, "Oh, I've heard it. I was just joking. Sorry.", "JustJoking")
	StartConversation(conversation, NPC, Spawn, "You cannot be serious. From where were you raised? Have you, in seriousness, not heard that term before?")
end

function WhatDoesItMean(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain004.mp3", "", "", 3729119270, 3986173886, Spawn)
	AddConversationOption(conversation, "I am Koada'Dal. What can I do?", "DoNotDeny")
	AddConversationOption(conversation, "I will leave for now then.")
	StartConversation(conversation, NPC, Spawn, "By Tunare, when did it all go so wrong? Koada'Dal... this is you, this is me, this is all of our people. Though, and some would disagree with me on this, there is a difference between a high elf and a Koada'Dal. True Koada'Dal know their lives are forfeit if it is the will of Tunare. High elves... well they're just humans with pointy ears.")
end

function JustJoking(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain003.mp3", "", "", 934395148, 2380624550, Spawn)
	AddConversationOption(conversation, "I apologize, I wish to help.", "DoNotDeny")
	StartConversation(conversation, NPC, Spawn, "Jokes are for those who lack the bravery to take action when it is needed. You do what you like, I will be busy helping our people.")
end

function DidYouNeedHelp(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain012.mp3", "", "", 4192139867, 2744580245, Spawn)
	AddConversationOption(conversation, "Yes.", "SureIAmWilling")
	AddConversationOption(conversation, "No, not right now.")
	StartConversation(conversation, NPC, Spawn, "Green Wisps are the beautiful bushes that once adorned the noble houses of Felwithe. They spend most of the day as any other plant, but as day turns to night and night turns to day they glow with a pulsing green light. It is breathtaking. I wish to spread them around Felw- er, around Castleview Hamlet for all to see. Will you help me?")
end

function WhoAreYourContacts(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain010.mp3", "", "", 3834761356, 938291768, Spawn)
	AddConversationOption(conversation, "I will find him, thank you.")
	StartConversation(conversation, NPC, Spawn, "They are currently in Oakmyst Forest. They should not be hard to find, speak with Adalin Emerael just within Oakmyst, he will point you in the right direction.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, ComponentsOfGrowth)
end

function GatheredComponentsYet(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain015.mp3", "", "", 3988898427, 1857718440, Spawn)
	
	if (HasQuest(Spawn, ComponentsOfGrowth) and QuestStepIsComplete(Spawn, ComponentsOfGrowth, 1) and QuestStepIsComplete(Spawn, ComponentsOfGrowth, 2) and QuestStepIsComplete(Spawn, ComponentsOfGrowth, 3) and GetQuestStep(Spawn, ComponentsOfGrowth) == 4) or HasCompletedQuest(Spawn, ComponentsOfGrowth) then
		AddConversationOption(conversation, "Yes, I have.", "GotComponents")
	end
	
	AddConversationOption(conversation, "I need the water flask.", "NeedWaterFlask")
	AddConversationOption(conversation, "No, not yet.")
	StartConversation(conversation, NPC, Spawn, "Have you gathered the components yet?")
end

function NeedWaterFlask(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	-- Water Flask
	if HasItem(Spawn, 15337, 1) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain017.mp3", "", "", 1348687410, 1688928730, Spawn)
		AddConversationOption(conversation, "All right.")
		StartConversation(conversation, NPC, Spawn, "I believe you already have it. Please check all of your bags, it may even be in the bank. Once you find it, get close to the Fountain of Valor and examine it.")
	else
		AddConversationOption(conversation, "Thanks you.")
		StartConversation(conversation, NPC, Spawn, "Certainly, here you are.")
		SummonItem(Spawn, 15337, 1)
	end
end

function GotComponents(NPC, Spawn)
	if HasQuest(Spawn, ComponentsOfGrowth) then
		SetStepComplete(Spawn, ComponentsOfGrowth, 4)
	end
	ReadyForNextStep(NPC, Spawn)
end

----------------------------------------------------------------------------------------------------------------
--		QUEST 2
----------------------------------------------------------------------------------------------------------------


function ReadyForNextStep(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain018.mp3", "", "", 3208917088, 31436847, Spawn)
	AddConversationOption(conversation, "Sure.", "SureQuest2")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Excellent. You are ready for the next step. There are eight planters around Castleview Hamlet. Currently, each has a tree in it. I would like you to plant Green Mists in them as well. Between the enriched soil and the blessed water it should not be too difficult. What do you say?")
end

function SureQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain019.mp3", "", "", 2622235887, 2432498099, Spawn)
	AddConversationOption(conversation, "I can go plant them now.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Great. There are eight planters: two on the south western corner of the inn, two north of the bank, one on the north west corner of the scribe's shop, one west of the scribe's shop on the level below it, and two north of the armor shop on the level above our current one.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, SowingBeauty)
end

function PlantedBushesYet(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain020.mp3", "", "", 1860236238, 2496988444, Spawn)
	
	if (HasCompletedQuest(Spawn, SowingBeauty) and not HasCompletedQuest(Spawn, TargetingCorruption)) or (HasQuest(Spawn, SowingBeauty) and GetQuestStep(Spawn, SowingBeauty) == 9) then
		AddConversationOption(conversation, "Yes, I have, there was a problem.", "dlg_19_1")
	else
		AddConversationOption(conversation, "No, not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Have you planted all of the Green Mist bushes?")
end

function dlg_19_1(NPC, Spawn)
	if HasQuest(Spawn, SowingBeauty) then
		SetStepComplete(Spawn, SowingBeauty, 9)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain021.mp3", "", "", 1190805988, 2574516810, Spawn)
	AddConversationOption(conversation, "When I tried to plant the seed at the planter north west of the scribe's shop part of the plant came alive and attacked me.", "dlg_19_2")
	StartConversation(conversation, NPC, Spawn, "Oh? Nothing serious I hope.")
end

--------------------------------------------------------------------------------------------------------------
--				QUEST 3
--------------------------------------------------------------------------------------------------------------

function dlg_19_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain022.mp3", "", "", 2234653654, 1673262997, Spawn)
	AddConversationOption(conversation, "It looks corrupted.", "dlg_19_3")
	StartConversation(conversation, NPC, Spawn, "By Tunare! How could that have happened? You seem all right, how is the plant?")
end

function dlg_19_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain023.mp3", "", "", 1015908882, 1417407767, Spawn)
	AddConversationOption(conversation, "Yes, I will.", "OfferQuest3")
	AddConversationOption(conversation, "No, not right now.")
	StartConversation(conversation, NPC, Spawn, "We must fix this, " .. GetName(Spawn) .. ". I know someone who can help. Shae'Ahla, you will find her northeast of the entrance to Qeynos Harbor. If anyone can help cleanse the Green Mist she can. Will you seek her out?")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, TargetingCorruption)
end

function GreenMistCleared(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain025.mp3", "", "", 3990599486, 444977837, Spawn)
	
	if (HasCompletedQuest(Spawn, TargetingCorruption) and not HasCompletedQuest(Spawn, TheCommune)) or (HasQuest(Spawn, TargetingCorruption) and GetQuestStep(Spawn, TargetingCorruption) == 3) then
		AddConversationOption(conversation, "Yes, a sprite attacked me as I cleansed it.", "dlg_22_1")
	else
		AddConversationOption(conversation, "Not, not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Has the Green Mist been cleansed?")
end

function dlg_22_1(NPC, Spawn)
	SetStepComplete(Spawn, TargetingCorruption, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain026.mp3", "", "", 622027382, 4205976531, Spawn)
	AddConversationOption(conversation, "Yes, I did.", "dlg_22_2")
	AddConversationOption(conversation, "No, I did not.", "DidNotKillSprite")
	StartConversation(conversation, NPC, Spawn, "A sprite? Here? That must be what caused the corruption, then. Originally I had actually suspected the alchemists to have been dumping chemicals in the planter outside their shop, I am relieved to know that this probably isn't the case. But this sprite... that is unfortunate. Did you kill it?")
end

-------------------------------------------------------------------------------------------------------------
--				QUEST 4
--------------------------------------------------------------------------------------------------------------

function DidNotKillSprite(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "You could not have known.", "dlg_22_3")
	AddConversationOption(conversation, "It was not your fault.", "dlg_22_3")
	AddConversationOption(conversation, "It is all right.", "dlg_22_3")
	StartConversation(conversation, NPC, Spawn, "I don't suppose that will matter much now. If you cleansed her charge she will have likely died shortly thereafter. I cannot believe this, I sent you out to plant, to encourage growth, and now you have indirectly caused death. I am sorry.")
end

function dlg_22_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain028.mp3", "", "", 1775941301, 1525044387, Spawn)
	AddConversationOption(conversation, "You could not have known.", "dlg_22_3")
	AddConversationOption(conversation, "It was not your fault.", "dlg_22_3")
	AddConversationOption(conversation, "It is all right.", "dlg_22_3")
	StartConversation(conversation, NPC, Spawn, "By Tunare... I sent you out to plant, to cause growth, and now I have forced you to cause death instead. I am so sorry, " .. GetName(Spawn) .. ".")
end

function dlg_22_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain029.mp3", "", "", 2832440299, 4280395631, Spawn)
	AddConversationOption(conversation, "I can.", "OfferQuest4")
	AddConversationOption(conversation, "I can not.", "dlg_22_4")
	StartConversation(conversation, NPC, Spawn, "You must seek out the spirit of this sprite. It will remain near her charge. Speak with it, perhaps you can ease your mind. Maybe we will even learn why she did it. Can you do this?")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, TheCommune)
end

function SpokenWithSpiritYet(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain031.mp3", "", "", 3214169408, 3875873368, Spawn)
	
	if (HasCompletedQuest(Spawn, TheCommune) and not HasCompletedQuest(Spawn, SendingWord)) or (HasQuest(Spawn, TheCommune) and GetQuestStep(Spawn, TheCommune) == 2) then
		AddConversationOption(conversation, "I have.", "dlg_25_1")
	else
		AddConversationOption(conversation, "I haven't yet.")
	end
	StartConversation(conversation, NPC, Spawn, "Have you spoken with the spirit?")
end

function dlg_25_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain032.mp3", "", "", 2910726024, 1590892637, Spawn)
	AddConversationOption(conversation, "She said she was sorry.", "dlg_25_2")
	StartConversation(conversation, NPC, Spawn, "And what did she say?")
end

function dlg_25_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain033.mp3", "", "", 3033520362, 3912252683, Spawn)
	AddConversationOption(conversation, "She mentioned never being able to see Oakmyst Forest again.", "dlg_25_3")
	StartConversation(conversation, NPC, Spawn, "I am not surprised. In death, for true creatures of Tunare, all corruption is purged.")
end

function dlg_25_3(NPC, Spawn)
	if HasQuest(Spawn, TheCommune) then
		SetStepComplete(Spawn, TheCommune, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain034.mp3", "", "", 2141460256, 860400107, Spawn)
	AddConversationOption(conversation, "She mentioned thin green thread while she was corrupted. What did that mean?", "dlg_25_4")
	StartConversation(conversation, NPC, Spawn, "I was afraid of this... a sunshimmer sprite.")
end

------------------------------------------------------------------------------------------------------------------------------
--			QUEST 5
------------------------------------------------------------------------------------------------------------------------------

function dlg_25_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain035.mp3", "", "", 405362245, 656678829, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_25_5")
	AddConversationOption(conversation, "I can not.")
	StartConversation(conversation, NPC, Spawn, "The thin green thread... it represents an unwavering connection with Tunare. She was strong, her death is unfortunate." .. GetName(Spawn) .. ". we must not idle. Will you carry the news of this event to Oakmyst Forest?")
end

function dlg_25_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain035a.mp3", "", "", 2092202853, 2822343063, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest5")
	StartConversation(conversation, NPC, Spawn, "Thank you. Please, travel to Oakmyst Forest and speak with Adalin Emerael. Tell him what has occurred here, he will know what to do.")
end

function OfferQuest5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, SendingWord)
end

function SpokenWithAdalinYet(NPC, Spawn, conversation)
	if HasCompletedQuest(Spawn, SendingWord) then
		AddConversationOption(conversation, "Yes, I have.", "SpokeWithAdalin")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Have you spoken with Adalin yet?")
end

function SpokeWithAdalin(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Perhaps.")
	StartConversation(conversation, NPC, Spawn, "Good, perhaps more corruption can be avoided.")
end