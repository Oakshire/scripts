--[[
	Script Name	: SpawnScripts/Graveyard/KeeperVaracusTKur.lua
	Script Purpose	: Keeper Varacus T'Kur
	Script Author	: Scatman
	Script Date	: 2009.07.11
	Script Notes	: 
--]]

local QUEST_1 = 232
local QUEST_2 = 233
local QUEST_5 = 235

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_2)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_5) then
				Say(NPC, "Back again? we have nothing else to offer you!", Spawn)
			elseif HasQuest(Spawn, QUEST_5) then
				OnQuest5(NPC, Spawn, conversation)
			else
				Say(NPC, "Thank you for your help!", Spawn)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			OnQuest2(NPC, Spawn, conversation)
		else
			FindThePages(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/keeper_varacus_t_kur/fprt_adv02_graveyard/varacus_tkur_busy_c0efc70b.mp3", "The Keepers of Ethernere don't have time for chatting.", "", 3808851913, 4000050632, Spawn)
	end
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 1
--------------------------------------------------------------------------------------------------------------------------------

function OnQuest1(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/keeper_varacus_t_kur/fprt_adv02_graveyard/varacus_tkur001.mp3", "", "", 829430571, 4055688593, Spawn)
	AddConversationOption(conversation, "Greetings. You must be Varacus.", "dlg_9_1")
	AddConversationOption(conversation, "Nothing, I thought you were someone else.")
	StartConversation(conversation, NPC, Spawn, "Yes, what is it?")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/keeper_varacus_t_kur/fprt_adv02_graveyard/varacus_tkur002.mp3", "", "", 1358191858, 2542564847, Spawn)
	AddConversationOption(conversation, "My name is " .. GetName(Spawn) .. ". Zaddar sent me on behalf of the Academy.", "dlg_9_2")
	AddConversationOption(conversation, "None of your business, Teir'Dal.")
	StartConversation(conversation, NPC, Spawn, "Well, that all depends. Who are you?")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/keeper_varacus_t_kur/fprt_adv02_graveyard/varacus_tkur003.mp3", "", "", 3292551343, 1126004800, Spawn)
	AddConversationOption(conversation, "You don't sound very respectful toward your superior.", "dlg_9_3")
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "Zaddar sent you, eh? Far be it from him to get his hands dirty in the Graveyard, I suppose!")
end

function dlg_9_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/keeper_varacus_t_kur/fprt_adv02_graveyard/varacus_tkur004.mp3", "", "", 2946582431, 2561170377, Spawn)
	AddConversationOption(conversation, "Where does your order's name come from?", "dlg_9_4")
	AddConversationOption(conversation, "Interesting, but I must go.")
	StartConversation(conversation, NPC, Spawn, "Though we Keepers of Ethernere must answer to the Academy of Arcane Science, ours is a grave responsibility. We watch over the tombs of Norrath and ensure that the spirits of the dead make their journey to the afterlife. You have no doubt seen our guards patrolling the Graveyard roads, and perhaps noticed the boneyard watchers we summon to watch for disturbances.")
end

function dlg_9_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/keeper_varacus_t_kur/fprt_adv02_graveyard/varacus_tkur005.mp3", "", "", 668156763, 3742751823, Spawn)
	AddConversationOption(conversation, "A fascinating tale, but Zaddar sent me to retrieve some tome pages.", "dlg_9_5")
	AddConversationOption(conversation, "I care not for your tale.")
	StartConversation(conversation, NPC, Spawn, "The Keepers of Ethernere come from a proud tradition of service to the House of the Dead in our ancient Teir'Dal city of Neriak. Ethernere is a dark realm of agony where spirits of the dead must travel. It is said that when a Norrathian dies, the bell in Deathtoll Tower at the heart of Ethernere rings to signal their spirit's arrival.")
end

function dlg_9_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/keeper_varacus_t_kur/fprt_adv02_graveyard/varacus_tkur006.mp3", "", "", 1546096595, 964116993, Spawn)
	AddConversationOption(conversation, "The Overlord will not be pleased. He commanded that Zaddar be given the pages.", "FindThePages")
	AddConversationOption(conversation, "This task is not my responsibility.")
	StartConversation(conversation, NPC, Spawn, "Ah yes, you seek the tome pages. Unfortunately, however, they have gone missing. They may be scattered about the Graveyard, or some might have fallen into the hands of the undead. Such creatures are drawn to objects of arcane power. I have other duties to attend to, so you will need to conduct your own search for the pages here in the Graveyard.")
end

function FindThePages(NPC, Spawn, conversation)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 1)
	end
	
	if conversation == nil then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/keeper_varacus_t_kur/fprt_adv02_graveyard/varacus_tkur007.mp3", "", "", 2021743149, 3486926438, Spawn)
	AddConversationOption(conversation, "I will find the pages.", "OfferQuest2")
	AddConversationOption(conversation, "I can't help you right now.")
	StartConversation(conversation, NPC, Spawn, "I had no idea this matter was so urgent to the Overlord! Please, hero of Freeport, you must find those pages. If not, I think all of us may face our master's wrath. Please let me know when you have found them.")
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 2
--------------------------------------------------------------------------------------------------------------------------------

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function OnQuest2(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/keeper_varacus_t_kur/fprt_adv02_graveyard/varacus_tkur009.mp3", "", "", 3736503585, 3888829392, Spawn)
	
	if GetQuestStep(Spawn, QUEST_2) > 4 then
		Say(NPC, "Please, don't tell anyone about our conversation!", Spawn)
	else
		if GetQuestStep(Spawn, QUEST_2) == 4 then
			AddConversationOption(conversation, "I've found the missing pages.", "dlg_10_1")
		end
	
		AddConversationOption(conversation, "Not yet, but I will keep looking.")
		StartConversation(conversation, NPC, Spawn, "I hope your search for the missing pages has been fruitful. Neither of us can afford to disappoint the Overlord.")
	end
end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/keeper_varacus_t_kur/fprt_adv02_graveyard/varacus_tkur010.mp3", "", "", 3933639759, 3329980648, Spawn)
	AddConversationOption(conversation, "By the Tower of Marr and near the graves of the fallen knights. Some were also in the possession of the undead.", "dlg_10_2")
	AddConversationOption(conversation, "I don't have time to discuss this.")
	StartConversation(conversation, NPC, Spawn, "Well done, " .. GetName(Spawn) .. "! Zaddar was right to choose you for this duty. Where did you find the pages?")
end

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/keeper_varacus_t_kur/fprt_adv02_graveyard/varacus_tkur011.mp3", "", "", 3532304049, 948480083, Spawn)
	AddConversationOption(conversation, "What could be causing this to happen?", "dlg_10_3")
	AddConversationOption(conversation, "This is no concern of mine.")
	StartConversation(conversation, NPC, Spawn, "The undead had them, eh? It is as I feared. There has been a marked increase in their activities as of late, the investigation of which has monopolized my time.")
end

function dlg_10_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/keeper_varacus_t_kur/fprt_adv02_graveyard/varacus_tkur012.mp3", "", "", 422855190, 220610803, Spawn)
	AddConversationOption(conversation, "I will take the pages to him.", "dlg_10_4")
	AddConversationOption(conversation, "It's not really my problem.")
	StartConversation(conversation, NPC, Spawn, "Perhaps the veil between our world and Ethernere is weakening, or maybe the influence of Mithaniel Marr is returning in some way to awaken his fallen soldiers. In any case, the safety of Freeport demands that you get these pages to Zaddar right away.")
end

function dlg_10_4(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_2, 4)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/keeper_varacus_t_kur/fprt_adv02_graveyard/varacus_tkur013.mp3", "", "", 2923473609, 4294205867, Spawn)
	AddConversationOption(conversation, "I will do so. I hope to work with you again, Varacus.")
	AddConversationOption(conversation, "I'm sick of running errands. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Here, take this book cover and put the pages inside it for safe keeping. Take the tome to Zaddar so that he can finish his research.")
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 5
--------------------------------------------------------------------------------------------------------------------------------

function OnQuest5(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_5) == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/keeper_varacus_t_kur/fprt_adv02_graveyard/varacus_tkur015.mp3", "", "", 423371381, 2980925675, Spawn)
		AddConversationOption(conversation, "Zaddar has need of something that you possess.", "dlg_13_1")
		AddConversationOption(conversation, "Nevermind, I need to go.")
		StartConversation(conversation, NPC, Spawn, "Hello again, " .. GetName(Spawn) .. ". What brings you back to the Keepers?")
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/keeper_varacus_t_kur/fprt_adv02_graveyard/varacus_tkur_took_staff_4dd499f0.mp3", "Make sure you take care of our staff!", "", 1927300864, 3031979454, Spawn)
	end
end

function dlg_13_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/keeper_varacus_t_kur/fprt_adv02_graveyard/varacus_tkur016.mp3", "", "", 2481073188, 86162182, Spawn)
	AddConversationOption(conversation, "No, he needs the Staff of Ethernere.", "dlg_13_2")
	AddConversationOption(conversation, "Nevermind, I need to go.")
	StartConversation(conversation, NPC, Spawn, "I have no more spell parchments, if that's what he's after.")
end

function dlg_13_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/keeper_varacus_t_kur/fprt_adv02_graveyard/varacus_tkur017.mp3", "", "", 722192907, 1883808749, Spawn)
	AddConversationOption(conversation, "But Zaddar says it is critical that he use it.", "dlg_13_3")
	AddConversationOption(conversation, "Just forget it.")
	StartConversation(conversation, NPC, Spawn, "The Staff of Ethernere is our most sacred relic, entrusted to our order when it was founded in Neriak. I couldn't possibly part with it, even for a short while.")
end

function dlg_13_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/keeper_varacus_t_kur/fprt_adv02_graveyard/varacus_tkur018.mp3", "", "", 821574395, 1723573145, Spawn)
	AddConversationOption(conversation, "The ward keeping the undead inside the Graveyard is failing, and we need the staff to restore it.", "dlg_13_4")
	AddConversationOption(conversation, "Go ask him yourself.")
	StartConversation(conversation, NPC, Spawn, "Though my order now serves the Academy of Arcane Science, my vow to the Keepers of Ethernere supersedes the Academy's demands. Why does he need the staff?")
end

function dlg_13_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/keeper_varacus_t_kur/fprt_adv02_graveyard/varacus_tkur019.mp3", "", "", 3925056079, 4036271614, Spawn)
	AddConversationOption(conversation, "There's no time, Varacus. We must do this ourselves.", "dlg_13_5")
	AddConversationOption(conversation, "You're probably right.")
	StartConversation(conversation, NPC, Spawn, "That is dire news indeed! But wouldn't someone like Thaumaturge Ranollious at the Academy be better suited for this task?")
end

function dlg_13_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/keeper_varacus_t_kur/fprt_adv02_graveyard/varacus_tkur020.mp3", "", "", 2024157770, 1751672495, Spawn)
	AddConversationOption(conversation, "I'll let him know.", "dlg_13_6")
	AddConversationOption(conversation, "Nevermind.")
	StartConversation(conversation, NPC, Spawn, "Very well. Zaddar may use the Staff of Ethernere. He can return it to me when he's certain the binding ward is back in place.")
end

function dlg_13_6(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_5, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	-- The Staff of Ethernere
	-- TODO: Show quest reward popup.
	if not HasItem(Spawn, 21591) then
		SummonItem(Spawn, 21591)
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/keeper_varacus_t_kur/fprt_adv02_graveyard/varacus_tkur021.mp3", "", "", 1322632030, 1536532403, Spawn)
	AddConversationOption(conversation, "I will take good care of the staff, Varacus. Be well.")
	StartConversation(conversation, NPC, Spawn, "Travel swiftly, Conjura. All of Freeport is depending on you now!")
end

