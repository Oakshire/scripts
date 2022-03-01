--[[
	Script Name	: Quests/Baubbleshire/neezers_survey.lua
	Script Purpose	: Handles the quest, "Neezer's Survey"
	Script Author	: Scatman
	Script Date	: 2009.09.27
	
	Zone       : The Baubbleshire
	Quest Giver: Neezer Grund
	Preceded by: Nogginspark Reactors (nogginspark_reactors.lua)
	Followed by: Getting to Know Poko (getting_to_know_poko.lua)
--]]

-- Quest ID's
local NEEZERS_SURVEY = 330 -- was 28

-- Item ID's
local NEEZERS_QUESTIONS = 10030

function Init(Quest)
	AddQuestStep(Quest, 1, "I must read the questions.", 1, 100, "I need to read the series of questions that Neezer gave me. If I lose the questions I can always ask Neezer for another copy of them.", 0)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_readQuestions")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	-- Neezer's Questions
	if not HasItem(Player, NEEZERS_QUESTIONS, 1) then
		SummonItem(Player, NEEZERS_QUESTIONS, 1)
	end

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund039b.mp3", "", "", 1403299137, 3842803422, Player)
	AddConversationOption(conversation, "I'll be back once I've gotten the answers.")
	StartConversation(conversation, QuestGiver, Player, "Strange but probably not surprising. Now get started!")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
	-- remove Neezer's Questions
	while HasItem(Player, NEEZERS_QUESTIONS) do
		RemoveItem(Player, NEEZERS_QUESTIONS)
	end
end

function step1_complete_readQuestions(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have read the questions.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have read the questions I am to ask.")
	
	AddQuestStepChat(Quest, 2, "I need to question Drundo in the tavern.", 1, "I need to question Drundo, Remo, and Fillzer.", 2180, 2380026)
	AddQuestStepChat(Quest, 3, "I need to question Remo in the eastern hills in the Baubbleshire.", 1, "I need to question Drundo, Remo, and Fillzer.", 2180, 2380004)
	AddQuestStepChat(Quest, 4, "I need to question Fillzer in the eastern hills in the Baubbleshire.", 1, "I need to question Drundo, Remo, and Fillzer.", 2180, 2380005)
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_talkedToDrundo")
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_talkedToRemo")
	AddQuestStepCompleteAction(Quest, 4, "step4_complete_talkedToFillzer")
end

function step2_complete_talkedToDrundo(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have questioned Drundo.")
	
	if QuestIsComplete(Player, NEEZERS_SURVEY) then
		multiple_steps_complete(Quest, QuestGiver, Player)
	end
end

function step3_complete_talkedToRemo(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have questioned Remo.")
	
	if QuestIsComplete(Player, NEEZERS_SURVEY) then
		multiple_steps_complete(Quest, QuestGiver, Player)
	end
end

function step4_complete_talkedToFillzer(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have questioned Fillzer.")
	
	if QuestIsComplete(Player, NEEZERS_SURVEY) then
		multiple_steps_complete(Quest, QuestGiver, Player)
	end
end

function multiple_steps_complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "I have questioned Drundo, Remo, and Fillzer.")
	
	AddQuestStepChat(Quest, 5, "I need to speak with Neezer Grund.", 1, "Now that I have all the answers for Neezer I will need to return to him.", 0, 2380038)
	AddQuestStepCompleteAction(Quest, 5, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have spoken with Neezer Grund.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have returned to Neezer.")

	-- remove Neezer's Questions
	while HasItem(Player, NEEZERS_QUESTIONS) do
		RemoveItem(Player, NEEZERS_QUESTIONS)
	end

	UpdateQuestDescription(Quest, "I have given Neezer the answers he was looking for.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_readQuestions(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_talkedToDrundo(Quest, QuestGiver, Player)
	elseif Step == 3 then
		step3_complete_talkedToRemo(Quest, QuestGiver, Player)
	elseif Step == 4 then
		step4_complete_talkedToFillzer(Quest, QuestGiver, Player)
	end
end