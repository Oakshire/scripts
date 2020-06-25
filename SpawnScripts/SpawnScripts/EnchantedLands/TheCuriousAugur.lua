--[[
	Script Name	: SpawnScripts/EnchantedLands/TheCuriousAugur.lua
	Script Purpose	: The Curious Augur 
	Script Author	: Cynnar
	Script Date	: 2015.02.17
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local ThreeMeaningsOfLife = 115

function spawn(NPC)
	ProvidesQuest(NPC, ThreeMeaningsOfLife)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	
	if not HasQuest(Spawn, ThreeMeaningsOfLife) and not HasCompletedQuest(Spawn, ThreeMeaningsOfLife) or HasQuest(Spawn, ThreeMeaningsOfLife) and GetQuestStep(Spawn, ThreeMeaningsOfLife) == 1 then
		-- start the quest
		PlayFlavor(NPC, "voiceover/english/the_curious_augur/enchanted/quests/quest_curious_augur/curious_augur001.mp3", "", "", 2804170240, 1658399698, Spawn)
		AddConversationOption(conversation, "You were expecting me?", "dlg_0_1")
		AddConversationOption(conversation, "I have no idea what you're talking about.")
		StartConversation(conversation, NPC, Spawn, "Ah, so you've arrived at last! I wondered when you would seek my knowledge of the meaning of life.  Come closer and we shall begin your quest for enlightenment, my child.")
	elseif HasQuest(Spawn, ThreeMeaningsOfLife) and GetQuestStep(Spawn, ThreeMeaningsOfLife) == 2 then
		-- on step 2
		PlayFlavor(NPC, "voiceover/english/the_curious_augur/enchanted/quests/quest_curious_augur/curious_augur004.mp3", "", "", 2520256937, 2710009453, Spawn)
		AddConversationOption(conversation, "I suppose so.", "QuestChat_1_2")
		AddConversationOption(conversation, "Probably not.")
		StartConversation(conversation, NPC, Spawn, "You are on your way towards mastering the intellectual meaning of life, are you not?  Are you ready to learn the next meaning of life?")
	elseif HasQuest(Spawn, ThreeMeaningsOfLife) and GetQuestStep(Spawn, ThreeMeaningsOfLife) == 3 then
		-- on step 3
		PlayFlavor(NPC, "voiceover/english/the_curious_augur/enchanted/quests/quest_curious_augur/curious_augur006.mp3", "", "", 897853069, 726940756, Spawn)
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "You've been eliminating the salt snappers?")
	elseif HasQuest(Spawn, ThreeMeaningsOfLife) and GetQuestStep(Spawn, ThreeMeaningsOfLife) == 4 then
		-- on step 4
		PlayFlavor(NPC, "voiceover/english/the_curious_augur/enchanted/quests/quest_curious_augur/curious_augur006.mp3", "", "", 897853069, 726940756, Spawn)
		AddConversationOption(conversation, "Yes, didn't you see me?", "QuestChat_2_2")
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "You've been eliminating the salt snappers?")
	elseif HasQuest(Spawn, ThreeMeaningsOfLife) and GetQuestStep(Spawn, ThreeMeaningsOfLife) == 5 then
		-- on step 5
		PlayFlavor(NPC, "voiceover/english/the_curious_augur/enchanted/quests/quest_curious_augur/curious_augur009.mp3", "", "", 2774283468, 3531323088, Spawn)
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "Did you speak with Sarma Singebellows?")
	elseif HasQuest(Spawn, ThreeMeaningsOfLife) and GetQuestStep(Spawn, ThreeMeaningsOfLife) == 6 then
		-- on step 6
		PlayFlavor(NPC, "voiceover/english/the_curious_augur/enchanted/quests/quest_curious_augur/curious_augur009.mp3", "", "", 2774283468, 3531323088, Spawn)
		AddConversationOption(conversation, "Yes, I did.", "QuestChat_3_2")
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "Did you speak with Sarma Singebellows?")
	elseif HasCompletedQuest(Spawn, ThreeMeaningsOfLife) then
		-- finished Quest
		PlayFlavor(NPC, "voiceover/english/the_curious_augur/enchanted/quests/quest_curious_augur/curious_augur009.mp3", "", "", 2774283468, 3531323088, Spawn)
		AddConversationOption(conversation, "I'll be on my way.")
		StartConversation(conversation, NPC, Spawn, "I have given you the keys, my child.  How or if you ever use them is in your hands.  Other Augurs you meet in your travels may provide you with more wisdom.")
	end
		
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/the_curious_augur/enchanted/quests/quest_curious_augur/curious_augur002.mp3", "", "", 722859471, 401514036, Spawn)
	AddConversationOption(conversation, "You offer such guidance?", "OfferThreeMeaningsOfLife")
	AddConversationOption(conversation, "I'm really not interested.")
	StartConversation(conversation, NPC, Spawn, "Yes, for I am an Augur, and that means I foresee the future.  I knew you would come forward to learn the meanings of life from me.  You are intensely curious, as am I.  Curiosity drives us towards our potential, but we need guidance to reach it.")
end

function OfferThreeMeaningsOfLife(NPC, Spawn) --The Curious Augur's Three Meanings of Life
	if not HasQuest(Spawn, ThreeMeaningsOfLife) then
        OfferQuest(NPC, Spawn, ThreeMeaningsOfLife)
    elseif HasQuest(Spawn, ThreeMeaningsOfLife) then
        QuestChat_0_1(NPC, Spawn)
    end

end

function QuestChat_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/the_curious_augur/enchanted/quests/quest_curious_augur/curious_augur003.mp3", "", "", 4037106442, 3061634368, Spawn)
	AddConversationOption(conversation, "I have seven fear feeders and eighteen shoal serpents.", "QuestChat_0_4")
	AddConversationOption(conversation, "I have fifteen fear feeders and ten shoal serpents.", "QuestChat_0_2")
	AddConversationOption(conversation, "I have five fear feeders and twenty shoal serpents.", "QuestChat_0_2")
	AddConversationOption(conversation, "I have no idea.", "QuestChat_0_2")
	StartConversation(conversation, NPC, Spawn, "There are many meanings to life and I can teach you only three.  The first meaning is that of the nimble mind.  Curiosity is a start, but you must be able to unravel this mystery to proceed.  You have slain many fear feeders and shoal serpents.  You have collected twenty five heads and fifty six legs.  How many of each have you slain?")
end

function QuestChat_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/the_curious_augur/enchanted/quests/quest_curious_augur/curious_augur014.mp3", "", "", 3661262572, 1665365128, Spawn)
	AddConversationOption(conversation, "If they're all male, half will be male and so will the other half.", "QuestChat_0_4")
	AddConversationOption(conversation, "It is not possible unless the parents are trolls.", "QuestChat_0_3")
	AddConversationOption(conversation, "There were six children initially, but one ran away.", "QuestChat_0_3")
	StartConversation(conversation, NPC, Spawn, "Hmm.  Let us try something simpler.  If a parent has five children, how is it possible that half of them are male?")
end

function QuestChat_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/the_curious_augur/enchanted/quests/quest_curious_augur/curious_augur014.mp3", "", "", 3661262572, 1665365128, Spawn)
	AddConversationOption(conversation, "Once.  After the first time, you'll be subtracting four from the number eight.", "QuestChat_0_4")
	StartConversation(conversation, NPC, Spawn, "Hmm.  Most interedting analysis.  Let us try one more question. How many times can you subtract four trom the number twelve?")
end

function QuestChat_0_4(NPC, Spawn)
	SetStepComplete(Spawn, ThreeMeaningsOfLife, 1)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/the_curious_augur/enchanted/quests/quest_curious_augur/curious_augur015.mp3", "", "", 2363467901, 2977768208, Spawn)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "You are well on your way to learning the intellectual meaning of life.  Of course, the questions are simple, but we all must start somewhere.  Take a moment to consider what you have learned, then we can continue.")
end

function QuestChat_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/the_curious_augur/enchanted/quests/quest_curious_augur/curious_augur004.mp3", "", "", 2520256937, 2710009453, Spawn)
	AddConversationOption(conversation, "I suppose so.", "QuestChat_1_2")
	AddConversationOption(conversation, "Probably not.")
	StartConversation(conversation, NPC, Spawn, "You are on your way towards mastering the intellectual meaning of life, are you not?  Are you ready to learn the next meaning of life?")
end

function QuestChat_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/the_curious_augur/enchanted/quests/quest_curious_augur/curious_augur005.mp3", "", "", 1765847486, 926846301, Spawn)
	AddConversationOption(conversation, "You want me to remove the salt snappers?", "QuestChat_1_3")
	StartConversation(conversation, NPC, Spawn, "Look beyond the docks to the shore.  The salt snappers wander back and forth, sometimes preventing swimmers from reaching land.  Do you think this should continue?")
end

function QuestChat_1_3(NPC, Spawn)
	SetStepComplete(Spawn, ThreeMeaningsOfLife, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/the_curious_augur/enchanted/quests/quest_curious_augur/curious_augur006.mp3", "", "", 897853069, 726940756, Spawn)
	AddConversationOption(conversation, "I'll be back.")
	StartConversation(conversation, NPC, Spawn, "There, you see how much easier such conclusions are to reach once you've exercised the intellectual meaning of life?  Yes, you must clear the path to the shore.  I will wait for you here.")
end

function QuestChat_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/the_curious_augur/enchanted/quests/quest_curious_augur/curious_augur006.mp3", "", "", 897853069, 726940756, Spawn)
	AddConversationOption(conversation, "Yes, didn't you see me?", "QuestChat_2_2")
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "You've been eliminating the salt snappers?")
end

function QuestChat_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/the_curious_augur/enchanted/quests/quest_curious_augur/curious_augur008.mp3", "", "", 3930223149, 1615857141, Spawn)
	AddConversationOption(conversation, "So I did all that for nothing?", "QuestChat_2_3")
	StartConversation(conversation, NPC, Spawn, "I didn't look, for the second meaning of life is that you must do what you say you will do.  No matter how worthy the task, there may be no one to notice your efforts and yet you must complete the tasks you undertake.  Even if someone is near, they are often far away.")
end

function QuestChat_2_3(NPC, Spawn)
	SetStepComplete(Spawn, ThreeMeaningsOfLife, 4)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/the_curious_augur/enchanted/quests/quest_curious_augur/curious_augur009.mp3", "", "", 2774283468, 3531323088, Spawn)
	AddConversationOption(conversation, "Sarma Singebellows.  All right, I'll be back.")
	StartConversation(conversation, NPC, Spawn, "You learned the second meaning of life, so it was hardly 'for nothing.'  Curiosity enriches the mind and we must always look out for our own interests.  However, there are others around us who can benefit from our strengths.  I would like you to meet someone who might need your help: Sarma Singebellows.  Speak with her.")
end

function QuestChat_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/the_curious_augur/enchanted/quests/quest_curious_augur/curious_augur009.mp3", "", "", 2774283468, 3531323088, Spawn)
	AddConversationOption(conversation, "Yes, I did.", "QuestChat_3_2")
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Did you speak with Sarma Singebellows?")
end

function QuestChat_3_2(NPC, Spawn)
	SetStepComplete(Spawn, ThreeMeaningsOfLife, 6)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/the_curious_augur/enchanted/quests/quest_curious_augur/curious_augur009.mp3", "", "", 2774283468, 3531323088, Spawn)
	AddConversationOption(conversation, "Not really.", "QuestChat_3_3")
	StartConversation(conversation, NPC, Spawn, "The final meaning the is selflessness.  For though we are each the most important person to care for in our lives, we must also take care that we do not lose our ability to extend a helping hand to others around us.  Do you understand these things?")
end

function QuestChat_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/the_curious_augur/enchanted/quests/quest_curious_augur/curious_augur009.mp3", "", "", 2774283468, 3531323088, Spawn)
	AddConversationOption(conversation, "I can only hope.")
	StartConversation(conversation, NPC, Spawn, "You are not ready, my child. A pity. Perhaps when you have studied for as many years as I have, you will reaize that these three meanings of life are the basis for all that you experience. Intellectual curiosity, doing things to benefit oneself as well as selflessness. Perhaps someday, you will understand.")
end
