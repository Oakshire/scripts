--[[
	Script Name	: Quests/TheSprawl/problem_solving.lua
	Script Purpose	: Handles the quest, "Problem Solving"
	Script Author	: Scatman
	Script Date	    : 2009.07.26
	
	Zone       : The Sprawl
	Quest Giver: Crispin Luvinius
	Preceded by: None
	Followed by: Advanced Problem Solving (advanced_problem_solving.lua)
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill five Dervish hoodlums.", 5, 100, "I need to send a message to the Dervish hoodlums in the Sprawl. The message will involve a lot of them breathing dirt.", 611, 1260092, 1260067, 1260111, 1260073, 1260112, 1260119, 1260103, 1260090, 1260065, 1260066, 1260113, 1260110, 1260091)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledHoodlums")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "Come back when you're done.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledHoodlums(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've dealt with the hoodlums.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Those hoodlums got the message loud and clear.")
	
	AddQuestStepChat(Quest, 2, "I need to talk with Crispin.", 1, "I should let Crispin in know that his problem has been solved. I should get paid, too.", 0, 1260004)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Crispin.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've let Crispin know that I've solved his problem.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I've taken care of Crispin's problem. I think it won't be too long before his business partner decides to do what he was told to do.")
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Complete_KilledHoodlums(Quest, QuestGiver, Player)
	end
end