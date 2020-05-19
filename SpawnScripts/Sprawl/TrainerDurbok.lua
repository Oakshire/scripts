--[[
	Script Name	: SpawnScripts/Sprawl/TrainerDurbok.lua
	Script Purpose	: Trainer Durbok <Dreadnaught>
	Script Author	: Scatman
	Script Date	: 2008.09.29
	Script Notes	: 
--]]

local QUEST_1_FROM_KURDEK = 253
local QUEST_3_FROM_KURDEK = 255
local QUEST_1 = 260 -- repeatable

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	local choice = math.random(1, 5)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quest/quest_trainer_durbok_callout_4b619d6e.mp3", "With my training, you Giantslayers might amount to something yet!", "agree", 677573718, 693214962, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quest/quest_trainer_durbok_callout_620ddf6f.mp3", "That's right, bob and weave.", "agree", 2563477319, 1972593588, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quest/quest_trainer_durbok_callout_6cf1b665.mp3", "Dominate your enemies through force!", "threaten", 2765968733, 31376268, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quest/quest_trainer_durbok_callout_d028d77b.mp3", "Parry and uppercut! Don't forget to use your jab!", "threaten", 1525930784, 909688040, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quest/quest_trainer_durbok_callout_f22abebb.mp3", "Tarden's laziness has been rubbing off on you Giantslayers!", "shakefist", 2685681648, 4087837540, Spawn)
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_1_FROM_KURDEK) or (HasQuest(Spawn, QUEST_1_FROM_KURDEK) and GetQuestStep(Spawn, QUEST_1_FROM_KURDEK) > 1) then
		if HasCompletedQuest(Spawn, QUEST_3_FROM_KURDEK) then
			if HasCompletedQuest(Spawn, QUEST_1) then
				-- repeatable
			elseif HasQuest(Spawn, QUEST_1) then
				OnQuest1(NPC, Spawn, conversation)
			else
				PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quests/trainer_durbok006.mp3", "", "", 2664707401, 3770487430, Spawn)
				AddConversationOption(conversation, "Enforcer Kurdek mentioned that you could use a hand.", "dlg_0_1")
				AddConversationOption(conversation, "Just passing through.")
				StartConversation(conversation, NPC, Spawn, "Ah, you again. What brings you back to this part of the Sprawl?")
			end
		else
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quests/trainer_durbok001.mp3", "", "", 3497395239, 3242764181, Spawn)
			AddConversationOption(conversation, "Sorry, I didn't mean to interrupt.")
			StartConversation(conversation, NPC, Spawn, "Hey! Can't you see I'm busy training these recruits how to fight?")
		end
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quests/trainer_durbok001.mp3", "", "", 3497395239, 3242764181, Spawn)
		if HasQuest(Spawn, QUEST_1_FROM_KURDEK) and GetQuestStep(Spawn, QUEST_1_FROM_KURDEK) == 1 then
			AddConversationOption(conversation, "My name is " .. GetName(Spawn) .. ". Enforcer Kurdek sent me to ask how things are going.", "dlg_18_1")
		end
		AddConversationOption(conversation, "Sorry, I didn't mean to interrupt.")
		StartConversation(conversation, NPC, Spawn, "Hey! Can't you see I'm busy training these recruits how to fight?")
	end

	
	--[[

		
	if convo==2 then

	end

	if convo==3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quests/trainer_durbok012.mp3", "", "", 857680969, 589713294, Spawn)
		AddConversationOption(conversation, "Yes, I'm looking for more work to do.", "dlg_3_1")
		AddConversationOption(conversation, "No thanks.")
		StartConversation(conversation, NPC, Spawn, "Welcome back. Are you ready to put more of those scum back in their place?")
	end

	if convo==4 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quests/trainer_durbok009.mp3", "", "", 2879942612, 4077208169, Spawn)
		AddConversationOption(conversation, "There are a few less troublemakers to worry about.", "dlg_4_1")
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "Hello again, adventurer. Have you finished thinning out the excess population around here?")
	end

	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quests/trainer_durbok012.mp3", "", "", 857680969, 589713294, Spawn)
		AddConversationOption(conversation, "Yes, I'm looking for more work to do.", "dlg_5_1")
		AddConversationOption(conversation, "No thanks.")
		StartConversation(conversation, NPC, Spawn, "Welcome back. Are you ready to put more of those scum back in their place?")
	end

	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quests/trainer_durbok009.mp3", "", "", 2879942612, 4077208169, Spawn)
		AddConversationOption(conversation, "Not yet.", "dlg_6_1")
		StartConversation(conversation, NPC, Spawn, "Hello again, adventurer. Have you finished thinning out the excess population around here?")
	end

	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quests/trainer_durbok009.mp3", "", "", 2879942612, 4077208169, Spawn)
		AddConversationOption(conversation, "Not yet.", "dlg_7_1")
		StartConversation(conversation, NPC, Spawn, "Hello again, adventurer. Have you finished thinning out the excess population around here?")
	end

	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quests/trainer_durbok009.mp3", "", "", 2879942612, 4077208169, Spawn)
		AddConversationOption(conversation, "There are a few less troublemakers to worry about.", "dlg_8_1")
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "Hello again, adventurer. Have you finished thinning out the excess population around here?")
	end

	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quests/trainer_durbok012.mp3", "", "", 857680969, 589713294, Spawn)
		AddConversationOption(conversation, "Yes, I'm looking for more work to do.", "dlg_9_1")
		AddConversationOption(conversation, "No thanks.")
		StartConversation(conversation, NPC, Spawn, "Welcome back. Are you ready to put more of those scum back in their place?")
	end

	if convo==18 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quests/trainer_durbok001.mp3", "", "", 3497395239, 3242764181, Spawn)
		AddConversationOption(conversation, "My name is Whipew. Enforcer Kurdek sent me to ask how things are going.", "dlg_18_1")
		AddConversationOption(conversation, "Sorry, I didn't mean to interrupt.")
		StartConversation(conversation, NPC, Spawn, "Hey! Can't you see I'm busy training these recruits how to fight?")
	end

	if convo==19 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quests/trainer_durbok001.mp3", "", "", 3497395239, 3242764181, Spawn)
		AddConversationOption(conversation, "Sorry, I didn't mean to interrupt.", "dlg_19_1")
		StartConversation(conversation, NPC, Spawn, "Hey! Can't you see I'm busy training these recruits how to fight?")
	end
--]]
end

-------------------------------------------------------------------------------------------------------------------
--							QUEST_1_FROM_KURDEK
-------------------------------------------------------------------------------------------------------------------

function dlg_18_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quests/trainer_durbok002.mp3", "", "", 3758292268, 2300851073, Spawn)
	AddConversationOption(conversation, "So how goes the training?", "dlg_18_2")
	AddConversationOption(conversation, "It sounds like a bother, so never mind.")
	StartConversation(conversation, NPC, Spawn, "That figures. Kurdek can't be bothered to ask me himself, eh? Fine, I suppose I can tell you instead.")
end

function dlg_18_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quests/trainer_durbok003.mp3", "", "", 641451677, 496874931, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_18_3")
	AddConversationOption(conversation, "That doesn't sound like my problem.")
	StartConversation(conversation, NPC, Spawn, "There are a few worthwhile Giantslayers here, but for the most part they're too sloppy to ever become Dreadnaughts. I don't really blame them, though. Clearly they aren't getting the proper direction.")
end

function dlg_18_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quests/trainer_durbok004.mp3", "", "", 321268147, 2623146346, Spawn)
	AddConversationOption(conversation, "What do you think should be done about it?", "dlg_18_4")
	AddConversationOption(conversation, "Good luck with that.")
	StartConversation(conversation, NPC, Spawn, "The one who claims to be the leader of the Giantslayers is a worthless barbarian named Brutemaster Tarden. I think he cares more about extorting money from the locals than he does about making sure his gang controls the Black Magi and the Dervish.")
end

function dlg_18_4(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1_FROM_KURDEK, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quests/trainer_durbok005.mp3", "", "", 768810452, 746067812, Spawn)
	AddConversationOption(conversation, "I'll let him know.")
	StartConversation(conversation, NPC, Spawn, "I recommend that we strike a little fear into Tarden so that he remembers who's really in charge around here. Tell Enforcer Kurdek that it's time to teach that lazy Giantslayer a lesson he won't soon forget.")
end

-------------------------------------------------------------------------------------------------------------------
--							QUEST 1
-------------------------------------------------------------------------------------------------------------------

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quests/trainer_durbok007.mp3", "", "", 3620375691, 3328248556, Spawn)
	AddConversationOption(conversation, "You've got a deal.", "OfferQuest1")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "Aye, some of the rival gangs are interfering with my ability to train the Giantslayers. I'd pay you well if you would get rid of some of them for me.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quests/trainer_durbok009.mp3", "", "", 2879942612, 4077208169, Spawn)
	if GetQuestStep(Spawn, QUEST_1) == 2 then
		AddConversationOption(conversation, "There are a few less troublemakers to worry about.", "dlg_2_1")
	end
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Hello again, adventurer. Have you finished thinning out the excess population around here?")
end

function dlg_2_1(NPC, Spawn)
	SetStepComlete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quests/trainer_durbok010.mp3", "", "", 1104739099, 151745645, Spawn)
	AddConversationOption(conversation, "I'll check back.", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "Great news! As promised, here's your reward. If you're available, I might have more work for you in the future.")
end

--[[
function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_durbok/fprt_adv03_sprawl/quests/trainer_durbok008.mp3", "", "", 2693497223, 3993753671, Spawn)
	AddConversationOption(conversation, "Will do.", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "Sounds good. I'll jot down the particulars in your journal. Come back to me for payment when you're finished showing those scum who's boss.")
end
--]]
