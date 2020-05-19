--[[
	Script Name	: Quests/TheSprawl/advanced_problem_solving.lua
	Script Purpose	: Handles the quest, "Advanced Problem Solving"
	Script Author	: Scatman
	Script Date	    : 2009.07.26
	
	Zone       : The Sprawl
	Quest Giver: Crispin Luvinius
	Preceded by: Problem Solving (problem_solving.lua)
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to beat up five Giantslayer bashers.", 5, 100, "I've heard that Giantslayer bashers hang out in the Sprawl. I should pay them a little visit.", 611, 1260122, 1260032, 1260041, 1260043, 1260031, 1260121, 1260123)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledBashers")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Yah, yah.")
	StartConversation(conversation, QuestGiver, Player, "Good, maybe you'll earn some respect with us.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledBashers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've beat down five Giantslayer bashers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've sent the Giantslayers a message that they shouldn't listen to vagrants who tell tall tales.")
	
	AddQuestStepChat(Quest, 2, "I need to talk with Crispin.", 1, "I should let Crispin know that he and his gang have nothing to worry about.", 0, 1260004)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Crispin.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've let Crispin know these guys won't be bothering them anymore.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I've taken care of Crispin's problem. It seems that the guy isn't as tough as he acts.")
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Complete_KilledBashers(Quest, QuestGiver, Player)
	end
end