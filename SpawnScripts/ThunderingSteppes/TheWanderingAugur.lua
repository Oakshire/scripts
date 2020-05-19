--[[
    Script Name    : SpawnScripts/ThunderingSteppes/TheWanderingAugur.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.13 12:07:13
    Script Purpose : The Wandering Augur (2490318)
                   : 
--]]

local TheWanderersThreeMeaningsOfLife = 110

function spawn(NPC)
	ProvidesQuest(NPC, TheWanderersThreeMeaningsOfLife)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if not HasQuest(Spawn, TheWanderersThreeMeaningsOfLife) and not HasCompletedQuest(Spawn, TheWanderersThreeMeaningsOfLife) then
		-- start the quest
		PlayFlavor(NPC, "voiceover/english/the_wandering_augur/steppes/quests/quest_wandering_augur/wandering_augur001.mp3", "", "", 3928308346, 2492813375, Spawn)
		AddConversationOption(conversation, "You were expecting me?", "dlg_0_1")
		AddConversationOption(conversation, "I have no idea what you're talking about.")
		StartConversation(conversation, NPC, Spawn, "Ah, so you've arrived at last! I wondered when you would seek my knowledge of the meaning of life.  Come closer and we shall begin your quest for enlightenment, my child.")
	elseif HasQuest(Spawn, TheWanderersThreeMeaningsOfLife) and GetQuestStep(Spawn, TheWanderersThreeMeaningsOfLife) == 1 then
		-- on step 1
		PlayFlavor(NPC, "voiceover/english/the_wandering_augur/steppes/quests/quest_wandering_augur/wandering_augur004.mp3", "", "", 4182174294, 1820017120, Spawn)
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "Ah, you've returned.  Do you understand the mysteries of the physical meanings of life?")
	elseif HasQuest(Spawn, TheWanderersThreeMeaningsOfLife) and GetQuestStep(Spawn, TheWanderersThreeMeaningsOfLife) == 2 then
		-- on step 2
		PlayFlavor(NPC, "voiceover/english/the_wandering_augur/steppes/quests/quest_wandering_augur/wandering_augur004.mp3", "", "", 4182174294, 1820017120, Spawn)
		AddConversationOption(conversation, "I suppose so.", "dlg_1_1")
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "Ah, you've returned.  Do you understand the mysteries of the physical meanings of life?")
	elseif HasQuest(Spawn, TheWanderersThreeMeaningsOfLife) and GetQuestStep(Spawn, TheWanderersThreeMeaningsOfLife) == 3 then
		-- on step 3
		PlayFlavor(NPC, "voiceover/english/the_wandering_augur/steppes/quests/quest_wandering_augur/wandering_augur007.mp3", "", "", 1006683380, 911151650, Spawn)
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "You have learned about inner strength, my child?  You have defeated the foes against whom I sent you?")
	elseif HasQuest(Spawn, TheWanderersThreeMeaningsOfLife) and GetQuestStep(Spawn, TheWanderersThreeMeaningsOfLife) == 4 then
		-- on step 4
		PlayFlavor(NPC, "voiceover/english/the_wandering_augur/steppes/quests/quest_wandering_augur/wandering_augur007.mp3", "", "", 1006683380, 911151650, Spawn)
		AddConversationOption(conversation, "Of course.", "dlg_2_1")
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "You have learned about inner strength, my child?  You have defeated the foes against whom I sent you?")
	elseif HasQuest(Spawn, TheWanderersThreeMeaningsOfLife) and GetQuestStep(Spawn, TheWanderersThreeMeaningsOfLife) == 5 then
		-- on step 5
		PlayFlavor(NPC, "voiceover/english/the_wandering_augur/steppes/quests/quest_wandering_augur/wandering_augur010.mp3", "", "", 3280494285, 3614506473, Spawn)
		AddConversationOption(conversation, "How should I know?  I haven't gone anywhere!")
		StartConversation(conversation, NPC, Spawn, "Did you set off in the right direction, my child?")
	elseif HasQuest(Spawn, TheWanderersThreeMeaningsOfLife) and GetQuestStep(Spawn, TheWanderersThreeMeaningsOfLife) == 6 then
		-- on step 6
		PlayFlavor(NPC, "voiceover/english/the_wandering_augur/steppes/quests/quest_wandering_augur/wandering_augur010.mp3", "", "", 3280494285, 3614506473, Spawn)
		AddConversationOption(conversation, "I guess.", "dlg_3_1")
		AddConversationOption(conversation, "How should I know?  I haven't gone anywhere!")
		StartConversation(conversation, NPC, Spawn, "Did you set off in the right direction, my child?")
	elseif HasCompletedQuest(Spawn, TheWanderersThreeMeaningsOfLife) then
		-- finished the quest
		PlayFlavor(NPC, "voiceover/english/the_wandering_augur/steppes/quests/quest_wandering_augur/wandering_augur013.mp3", "", "", 1521418825, 1376165665, Spawn)
		AddConversationOption(conversation, "I'll be on my way.")
		StartConversation(conversation, NPC, Spawn, "I have given you the keys, my child.  How or if you ever use them is in your hands.  Other Augurs you meet in your travels may provide you with more wisdom.")	
	end
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/the_wandering_augur/steppes/quests/quest_wandering_augur/wandering_augur002.mp3", "", "", 2562964464, 4217203499, Spawn)
	AddConversationOption(conversation, "The meanings of life, eh? I'm listening.", "dlg_0_2")
	AddConversationOption(conversation, "I'm not interested.")
	StartConversation(conversation, NPC, Spawn, "Many seek me, my child, for I hold the secrets to the meanings of life.  The meanings are many yet few.  They are expansive yet personal.  They are wide-reaching while remaining local.  The meanings of life are all around us and with my help, you can unlock them if you so desire.")
end

function dlg_0_2(NPC, Spawn)
	OfferQuest(NPC, Spawn, TheWanderersThreeMeaningsOfLife)
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/the_wandering_augur/steppes/quests/quest_wandering_augur/wandering_augur005.mp3", "", "", 1955011218, 3592248483, Spawn)
		AddConversationOption(conversation, "Inner strength?", "dlg_1_2")
		AddConversationOption(conversation, "I don't have time for inner strength.")
	StartConversation(conversation, NPC, Spawn, "The physical meaning is the way of pain, my child.  Pain can be overcome through strengthening one's mind.  By focusing on the learning and not the pain, you will realize the second meaning of life: inner strength.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	SetStepComplete(Spawn, TheWanderersThreeMeaningsOfLife, 2)
	PlayFlavor(NPC, "voiceover/english/the_wandering_augur/steppes/quests/quest_wandering_augur/wandering_augur006.mp3", "", "", 14505144, 1932942931, Spawn)
	AddConversationOption(conversation, "I wasn't asking a question, I was...oh, never mind.  I'll be back.")
	StartConversation(conversation, NPC, Spawn, "A wise question, young one.  The only way you will learn inner strength is through perseverance.  And perseverance is remaining steadfast no matter how difficult the situation.  To this end, you must defeat your foes in single combat and steel your mind against all pain.  Go, then, and return when you are ready for the final meaning of life.")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/the_wandering_augur/steppes/quests/quest_wandering_augur/wandering_augur008.mp3", "", "", 915290527, 2753306989, Spawn)
	AddConversationOption(conversation, "How do you know if it's the right direction?", "dlg_2_2")
	AddConversationOption(conversation, "I'm not ready to finish this.")
	StartConversation(conversation, NPC, Spawn, "I have led you towards two of the meanings of life.  There is but one more that I can share with you.  This is the most subtle of meanings and the one at which most students balk.  It is patience and learning to trust that what will be, will be.  The longest journey starts with a single step, whether in the right direction or not.")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	SetStepComplete(Spawn, TheWanderersThreeMeaningsOfLife, 4)
	PlayFlavor(NPC, "voiceover/english/the_wandering_augur/steppes/quests/quest_wandering_augur/wandering_augur009.mp3", "", "", 1926047857, 1251915059, Spawn)
	AddConversationOption(conversation, "You didn't answer my question.  Never mind.  I'll be back.")
	StartConversation(conversation, NPC, Spawn, "I always know whether I am setting off in the right direction.  The question is, do you?  Go, then, and see whether you have the patience to conquer the third meaning of life.  I will wait for you here.  Patiently, of course.")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/the_wandering_augur/steppes/quests/quest_wandering_augur/wandering_augur011.mp3", "", "", 2965742070, 4163652707, Spawn)
	AddConversationOption(conversation, "Not really.  Are all Augurs as obtuse as you?", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "As you see, sometimes many directions are correct.  We learn through trial and error which direction is correct at that moment.  The next time we set forth, we take what we have learned and apply it to our latest situation.  Do you understand now, my child?")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, TheWanderersThreeMeaningsOfLife, 6)
	PlayFlavor(NPC, "voiceover/english/the_wandering_augur/steppes/quests/quest_wandering_augur/wandering_augur012.mp3", "", "", 1899808569, 4168257450, Spawn)
	AddConversationOption(conversation, "Patience.  Hmm.")
	StartConversation(conversation, NPC, Spawn, "You are not ready, my child.  A pity.  Perhaps when you have studied for as many years as I have, you will realize that these three meanings of life are the basis for all that you experience.  The physical meaning, inner strength and patience.  Yes, patience, above all else.")
end