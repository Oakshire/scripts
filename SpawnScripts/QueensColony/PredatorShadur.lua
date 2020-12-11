--[[
	Script Name	: SpawnScripts/QueensColony/PredatorShadur.lua
	Script Purpose	: Predator Sha'dur 
	Script Author	: John Adams
	Script Date	: 2008.09.20
	Script Notes	: Auto-Generated Conversation from PacketParser Data
	Modified Date   : 2020.04.04
	Modified by     : premierio015
	Notes           : Added Animations
--]]

local IntoTheTaintedForest = 162

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, IntoTheTaintedForest) then
		if GetQuestStep(Spawn, IntoTheTaintedForest) == 1 then
			-- on step 1
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/predator_sha_dur/tutorial_island02_revamp/quests/citizenship/predatorshadur/predatorshadur001.mp3", "", "frustrated", 974461124, 1688750829, Spawn)
			AddConversationOption(conversation, "Easy there, all is not lost. I can help.", "AllNotLost")
			AddConversationOption(conversation, "Then I'll just come back later.")
			StartConversation(conversation, NPC, Spawn, "Wraaa! The day is grim. Has this world lost all of its goodness and left us with this cold husk? I suppose you were sent by Murrar, but my job has been halted.")
--		elseif GetQuestStep(Spawn, IntoTheTaintedForest) == 2 or GetQuestStep(Spawn, 9) == 4 then
		elseif GetQuestStep(Spawn, IntoTheTaintedForest) == 2 then
			-- on step 2
			AddConversationOption(conversation, "I'm still looking.")
			PlayAnimation(NPC, 11628)
			StartConversation(conversation, NPC, Spawn, "Wraaa! Don't worry, I didn't expect to get my bow and arrows back anyway.")
		elseif GetQuestStep(Spawn, IntoTheTaintedForest) == 3 then
			-- on step 3
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/predator_sha_dur/tutorial_island02_revamp/quests/citizenship/predatorshadur/predatorshadur005.mp3", "", "", 2074453663, 3037764595, Spawn)
			AddConversationOption(conversation, "There were no arrows to be found.", "NoArrowsFound")
			StartConversation(conversation, NPC, Spawn, "Wra... my bow! You did this for me? Maybe this day is not so bad. Maybe you found my arrows too?")
		elseif GetQuestStep(Spawn, IntoTheTaintedForest) == 4 then
			-- on step 4
			AddConversationOption(conversation, "I'm still looking.")
			PlayAnimation(NPC, 11628)
			StartConversation(conversation, NPC, Spawn, "Wraaa! Don't worry, I didn't expect to get my bow and arrows back anyway.")
		elseif GetQuestStep(Spawn, IntoTheTaintedForest) == 5 then
			Step5Complete(NPC, Spawn)
		else
			GivenHope(NPC, Spawn)
		end
	elseif HasCompletedQuest(Spawn, IntoTheTaintedForest) then
		GivenHope(NPC, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/predator_sha_dur/tutorial_island02_revamp/quest/citizenship_predator_shadur_notonquest_ace49adb.mp3", "I like your look. I think you may be able to help me. Speak with Murrar Shar, back in the Queen's Colony, if you're interested.", "", 3528725023, 1136267894, Spawn)
	end
end

function AllNotLost(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/predator_sha_dur/tutorial_island02_revamp/quests/citizenship/predatorshadur/predatorshadur002.mp3", "", "sigh", 1717533921, 3624025078, Spawn)
	AddConversationOption(conversation, "Maybe I can find your bow and arrows?", "FindBowAndArrows")
	AddConversationOption(conversation, "I'd rather stay out of this.")
	StartConversation(conversation, NPC, Spawn, "Help was a word I didn't expect to hear, but I'm most likely beyond helping. See, I was sent here to collect samples from the wildlife that has become tainted, but on my hunt I was ambushed by the nearby goblins. My bow and arrows were lost in the scuffle.")
end

function FindBowAndArrows(NPC, Spawn)
	SetStepComplete(Spawn, IntoTheTaintedForest, 1)

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/predator_sha_dur/tutorial_island02_revamp/quests/citizenship/predatorshadur/predatorshadur003.mp3", "", "", 3011492014, 1113535899, Spawn)
	AddConversationOption(conversation, "Don't worry, I'll find it.")
	StartConversation(conversation, NPC, Spawn, "I'm sure my bow is in the hands of those tainted Sapswill tappers that ambushed me. You might try, but I don't except much.")
end

function NoArrowsFound(NPC, Spawn)
	SetStepComplete(Spawn, IntoTheTaintedForest, 3)

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/predator_sha_dur/tutorial_island02_revamp/quests/citizenship/predatorshadur/predatorshadur006.mp3", "", "frustrated", 2110516952, 1980416532, Spawn)
	AddConversationOption(conversation, "Be at ease, friend.  I can get the sticks.")
	StartConversation(conversation, NPC, Spawn, "Well there goes the day again! What's a bow without arrows? The only good sticks I've found to make arrow shafts are by that spider den! Brrrr!")
end

function  Step5Complete(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/predator_sha_dur/tutorial_island02_revamp/quests/citizenship/predatorshadur/predatorshadur007.mp3", "", "", 1042822953, 3405333200, Spawn)
	AddConversationOption(conversation, "That's the spirit!", "dlg_16_1")
	StartConversation(conversation, NPC, Spawn, "You'd do this for me again? I can fletch these sticks into perfect arrows. You, my friend, have turned my eyes. It's a great day. I know we can beat this menace!")
end

function dlg_16_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/predator_sha_dur/tutorial_island02_revamp/quests/citizenship/predatorshadur/predatorshadur008.mp3", "", "ponder", 985337170, 2895526537, Spawn)
	AddConversationOption(conversation, "You've already got some samples? But...", "dlg_16_2")
	StartConversation(conversation, NPC, Spawn, "You know, come to think of it.  I did get a few small samples before I lost my bow.  Why don't you take them back to Murrar to see if they'll do.")
end

function dlg_16_2(NPC, Spawn)
	SetStepComplete(Spawn, IntoTheTaintedForest, 5)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/predator_sha_dur/tutorial_island02_revamp/quests/citizenship/predatorshadur/predatorshadur009.mp3", "", "no", 2433535127, 45385354, Spawn)
	AddConversationOption(conversation, "Great! I know Murrar's waiting for these.", "dlg_16_3")
	StartConversation(conversation, NPC, Spawn, "No really, go ahead!  With your help finding my gear, you've shown that there is light in this dim hour.  We will live to fight another day.")
end

function GivenHope(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
        
        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/predator_sha_dur/tutorial_island02_revamp/quests/citizenship/predatorshadur/predatorshadur010.mp3", "", "", 140512901, 3193378379, Spawn)

	AddConversationOption(conversation, "Good luck.")
	StartConversation(conversation, NPC, Spawn, "My arrows are almost ready! You've given me hope friend.")
end