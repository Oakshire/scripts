--[[
	Script Name	: Quests/Castleview/regrowth.lua
	Script Purpose	: Handles the quest, "Regrowth"
	Script Author	: Scatman
	Script Date	: 2009.10.02
	
	Zone       : Oakmyst Forest
	Quest Giver: Adalin Emerael
	Preceded by: None
	Followed by: None
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to cleanse the tree west of the gates to Castleview Hamlet.", 1, 100, "Adalin has asked for my help in cleansing a number of trees in the Oakmyst Forest.", 0)
	AddQuestStep(Quest, 2, "I need to cleanse the tree east of the Western Falls, west of the first tree.", 1, 100, "Adalin has asked for my help in cleansing a number of trees in the Oakmyst Forest.", 0)
	AddQuestStep(Quest, 3, "I need to cleanse the tree east of the entrance to the docks.", 1, 100, "Adalin has asked for my help in cleansing a number of trees in the Oakmyst Forest.", 0)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_Tree1")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_Tree2")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_Tree3")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	-- cleansing salve
	if not HasItem(Player, 4386, 1) then
		SummonItem(Player, 4386, 1)
	end

	AddConversationOption(conversation, "I will, thank you.")
	StartConversation(conversation, QuestGiver, Player, "This salve should allow you to cleanse them easily enough. May tunare be with you.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_Tree1(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have cleansed the tree west of the gates to Castleview Hamlet.")
	
	if QuestIsComplete(Player, 294) then
		TreesCleansed(Quest, QuestGiver, Player)
	end
end

function Step2_Complete_Tree2(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have cleansed the tree east of the Western Falls.")
	
	if QuestIsComplete(Player, 294) then
		TreesCleansed(Quest, QuestGiver, Player)
	end
end

function Step3_Complete_Tree3(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have cleansed the tree east of the entrance to the docks.")
	
	if QuestIsComplete(Player, 294) then
		TreesCleansed(Quest, QuestGiver, Player)
	end
end

function TreesCleansed(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have cleansed the plants that Adalin has asked me to cleanse.")
	
	AddQuestStepChat(Quest, 4, "I need to return to Adalin and tell him of the gnoll attack.", 1, "I need to return to Adalin and tell him of the gnoll attack while cleansing.", 0, 1950005)
	AddQuestStepCompleteAction(Quest, 4, "Step4_Complete_SpokeWithAdalin")
end

function Step4_Complete_SpokeWithAdalin(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Adalin.")
	
	AddQuestStepChat(Quest, 5, "I need to bring the news of the gnoll presence to Lieutenant Charlin.", 1, "I need to return to Adalin and tell him of the gnoll attack while cleansing.", 0, 1950015)
	AddQuestStepCompleteAction(Quest, 5, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have spoken with Lieutenant Charlin.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have informed Lieutenant Charlin of the gnoll presence in Oakmyst Forest.")
	UpdateQuestDescription(Quest, "In helping Adalin Emerael cleanse some of the trees in Oakmyst Forest I was attacked by a gnoll. With the gnoll's paw as proof Lieutenant Charlin has agreed that a possible gnoll threat needs to be looked in to.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_Tree1(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_Tree2(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_Tree3(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4_Complete_SpokeWithAdalin(Quest, QuestGiver, Player)
	end
end