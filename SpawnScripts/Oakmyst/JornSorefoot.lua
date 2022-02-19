--[[
	Script Name	: SpawnScripts/Oakmyst/JornSorefoot.lua
	Script Purpose	: Jorn Sorefoot 
	Script Author	: John Adams/Scatman
	Script Date	: 2009.05.03
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local BARBARIAN = 0
local QUEST_FROM_BURK = 66
local QUEST_1 = 5220
local QUEST_OAKMYST_LAST = 208

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, QUEST_FROM_BURK) then
		ThatLittle(NPC, Spawn, conversation)
	else
		if HasCompletedQuest(Spawn, QUEST_1) then
			if HasCompletedQuest(Spawn, QUEST_OAKMYST_LAST) then
				Say(NPC, "I hear you've built up quite a reputation. You have my sincere thanks.", Spawn)
			else
				Say(NPC, "Thanks again for your help. You have no idea how much I appreciate it.", Spawn)
			end
		elseif HasQuest(Spawn, QUEST_1) then
			OnQuest1(NPC, Spawn, conversation)
		else
			if GetRace(Spawn) == BARBARIAN then
				MightyTired(NPC, Spawn, conversation)
			else
				PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jorn_sorefoot/qey_adv01_oakmyst_revamp/qst_jorn_notonquest_df0ceb3e.mp3", "Gnomes... Bah! Who needs 'em?", "", 1750870039, 1562498784, Spawn)
			end
		end
	end
end

-----------------------------------------------------------------------------------------------------------------
--					QUEST FROM GRAYSTONE
-----------------------------------------------------------------------------------------------------------------

function ThatLittle(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jorn_sorefoot/qey_adv01_oakmyst/quests/jorn/jorn_burk000.mp3", "", "", 1348812672, 1734083903, Spawn)
	AddConversationOption(conversation, "Burk Stoneshatter send me to see you.", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "That little, blasted, jerk-faced liar!")
end

function dlg_0_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_FROM_BURK, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jorn_sorefoot/qey_adv01_oakmyst/quests/jorn/jorn_burk001.mp3", "", "", 2501778388, 330892647, Spawn)
	
	if not HasQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "He said you might be able to use my help.", "YeahICanUseYourHelp")
	else
		AddConversationOption(conversation, "I'm not sure. I've already completed your one quest so you're not use to me.")
	end
	
	StartConversation(conversation, NPC, Spawn, "No, Burk isn't a liar. That gnome, though, he's got me steamed. Erm, sorry, why did Burk send you?")
end

------------------------------------------------------------------------------------------------------------------
--					QUEST 1
------------------------------------------------------------------------------------------------------------------

function MightyTired(NPC, Spawn, conversation)
	AddConversationOption(conversation, "Why are you tired?", "BeenWorkingHard")
	StartConversation(conversation, NPC, Spawn, "I'm mighty tired right now, mighty indeed.")
end

function BeenWorkingHard(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Maybe I can help.", "YeahICanUseYourHelp")
	StartConversation(conversation, NPC, Spawn, "I've been working hard. Too hard for my own good, I'm a bit stubborn, ya know?")
end

function YeahICanUseYourHelp(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jorn_sorefoot/qey_adv01_oakmyst/quests/jorn/jorn002.mp3", "", "", 1939299225, 497932785, Spawn)
	AddConversationOption(conversation, "That is pretty drunk.", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "Yeah, yeah I can use your help. There's a gnome somewhere out there in the forest. His name is Fluwkowir Haggleton, at least that's what he told me his name was. We were playing cards--high stakes, ya know--and I caught him cheating. I was gonna smash his little face in right then and there, but I was too drunk to fight.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jorn_sorefoot/qey_adv01_oakmyst/quests/jorn/jorn003.mp3", "", "", 2714635802, 3698549932, Spawn)
	AddConversationOption(conversation, "So what do you need me to do?", "dlg_0_4")
	StartConversation(conversation, NPC, Spawn, "I know! So I find him the next day, and he musta seen the look in my eyes, because he just stopped in mid-conversation and took off running. I chased him here, but he got away from me. I've got guards on the lookout for him, but running all around the forest has me sweatin' heavy.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jorn_sorefoot/qey_adv01_oakmyst/quests/jorn/jorn004.mp3", "", "", 653807965, 2666347981, Spawn)
	AddConversationOption(conversation, "Sure, I can look for him.", "dlg_0_5")
	StartConversation(conversation, NPC, Spawn, "I've got guards--friends of mine--watching the gates and the docks. They say they can't detain him without me bringing up something formal, but I don't want that. Instead, they'll just tell me if he passes through. It'll take forever to wait him out, so I've been looking for him in the forest, but I'm tired and need my rest. If you could look for him it'd be very helpful.")
end

function dlg_0_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jorn_sorefoot/qey_adv01_oakmyst/quests/jorn/jorn005.mp3", "", "", 908304310, 3978784738, Spawn)
	AddConversationOption(conversation, "I'll try to find him.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Great! I just need to get back the money he stole from me. Sure, my fists are itching for some revenge, but right now the money is the important thing. I last saw him heading to the docks, to the west. He won't be able to get out directly, but he may be looking for a way to sneak out.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_1) == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jorn_sorefoot/qey_adv01_oakmyst/quests/jorn/jorn006.mp3", "", "", 1189036367, 1052258998, Spawn)
		AddConversationOption(conversation, "No, not yet.")
		StartConversation(conversation, NPC, Spawn, "Have you found my money yet?")
	elseif GetQuestStep(Spawn, QUEST_1) == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jorn_sorefoot/qey_adv01_oakmyst/quests/jorn/jorn006.mp3", "", "", 1189036367, 1052258998, Spawn)
		AddConversationOption(conversation, "The gnome attacked me, I had to kill him. Here is your money.", "dlg_2_1")
		StartConversation(conversation, NPC, Spawn, "Have you found my money yet?")
	else
		Say(NPC, "You Should take that book to Lieutenant Charlin before someone thinks it belongs to you.", Spawn)
	end
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jorn_sorefoot/qey_adv01_oakmyst/quests/jorn/jorn007.mp3", "", "", 1565958300, 3393057370, Spawn)
	AddConversationOption(conversation, "You're welcome.", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "Justice is a harsh mistress. Don't fret, he got what he deserved. Thank you, " .. GetName(Spawn) .. ".")
end

function dlg_2_2(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jorn_sorefoot/qey_adv01_oakmyst/quests/jorn/jorn008.mp3", "", "", 964400543, 602275594, Spawn)
	AddConversationOption(conversation, "All right, I'll speak with him.")
	StartConversation(conversation, NPC, Spawn, "I- hm, this contains more than just money. This book is written in Lucanic. You know, you'd better take this to Lieutenant Charlin. He'll know what to do about this book, it looks like our gnome friend may have been a Freeportian. I don't want anything to do with any of this, I'm just glad I got my money. Thanks.")
end