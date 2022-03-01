--[[
	Script Name		:	GranvillesRestaurantAntonica.lua
	Script Purpose	:	Handles the quest, "Granville's Restaurant, Antonica"
	Script Author	:	Jabantiz
	Script Date		:	6/14/2016
	Script Notes	:	

	Zone			:	Thundering Steppes
	Quest Giver		:	Tobias Granville (2490178)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must bring back large shore crab shells for Tobias' crab bisque.", 15, 100, "I will need to obtain what Tobias needs in and around the Thundering Steppes.", 77, 2490280)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've collected several large shore crab shells.")

	AddQuestStepChat(Quest, 2, "I should take these shells back to Tobias Granville in the Village of Thundermist.", 1, "I will need to obtain what Tobias needs in and around the Thundering Steppes.", 2545, 2490178)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Tobias.")

	AddQuestStepHarvest(Quest, 3, "I need to obtain a variety of high quality seafood for Tobias' seafood bisque, thicket crayfish should suffice.", 20, 100, "I will need to obtain what Tobias needs in and around the Thundering Steppes.", 2545, 14395)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've obtained several thicket crayfish for Tobia's bisque.")

	AddQuestStepChat(Quest, 4, "I need to take these ingredients to Tobias Granville in the Village of Thundermist.", 1, "I will need to obtain what Tobias needs in and around the Thundering Steppes.", 11, 2490178)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've spoken with Tobias.")

	AddQuestStepLocation(Quest, 5, "I need to check on what might be keeping the creature population low near the shore.", 30, "I will need to obtain what Tobias needs in and around the Thundering Steppes.", 11, 1481, -20, 239 )
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've seen a siren's temple; they might be keeping the populations low.")

	AddQuestStepChat(Quest, 6, "I need to report back to Tobias Granville in the Village of Thundermist.", 1, "I will need to obtain what Tobias needs in and around the Thundering Steppes.", 11, 2490178)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I've spoken with Tobias.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've provided everything Tobias requested.")

	UpdateQuestDescription(Quest, "I've procured the basic ingredients Tobias requested.  He paid part of what he owes me, but told me that his sister Tanny Granville has the rest of their funds.  I will have to look Miss Granville up when I pass through Nektulos Forest to collect what's owed me...or I can forget the whole thing.  Hmm...decisions, decisions.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "All right, I'll be back.")
	StartConversation(conversation, QuestGiver, Player, "We start by taking the shells of large shore crabs and seasoning them, then  we cook them over low heat in just the right amount of liquid.  The flavor intensifies over time into something completely sublime.  We'll see how you handle this task before entrusting you with something a bit more delicate, eh?", "voiceover/english/tobias_granville/steppes/quests/quest_tobias_granville/tobias_granville003.mp3", 11212970, 2895684237)
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end