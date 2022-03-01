--[[
	Script Name	: Quests/LongshadowAlley/a_clear_understanding.lua
	Script Purpose	: Handles the quest, "A Clear Understanding"
	Script Author	: Scatman
	Script Date	: 2009.04.07
	
	Zone       : Longshadow Alley
	Quest Giver: Aldera V'Exxa
	Preceded by: None
	Followed by: A Lesson to Learn (a_lesson_to_learn.lua)
--]]

-- Quest ID's
local A_CLEAR_UNDERSTANDING = 335

function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to make my way to the Destroyed Knowledge Portal in the center of Longshadow Alley.", 10, "I need to become familiar with Longshadow Alley.", 0, 0, 2.07, 0)
	AddQuestStepLocation(Quest, 2, "Access to North Freeport is via the city gate.", 20, "I need to become familiar with Longshadow Alley.", 0, 13.52, 4.02, 65.42)
	AddQuestStepLocation(Quest, 3, "There is an entrance to Thieves' Way within an elevated manhole west of the Destroyed Knowledge Portal.", 10, "I need to become familiar with Longshadow Alley.", 0, 43.82, -0.87, -23.08)
	AddQuestStepLocation(Quest, 4, "Some exits are not by land, they are by water. Examine the bells on the dock in Longshadow Alley.", 10, "I need to become familiar with Longshadow Alley.", 0, -49.75, -4.67, -82.32)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_Portal")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_Gate")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_Sewer")
	AddQuestStepCompleteAction(Quest, 4, "Step4_Complete_Bells")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_020.mp3", "", "", 4155318250, 3441039640, Player)
	AddConversationOption(conversation, "I will.")
	StartConversation(conversation, QuestGiver, Player, "In the center of the city is the Knowledge Portal, now destroyed.  The majority of the vendors have set up shop near the Portal, including the Armor Shop and the Freeport Reserve bank.  It is wise to know where the exits to our neighborhood are as well -- both gates and grates.  Become familiar with the layout, then return to me.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_Portal(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've seen the Destroyed Knowledge Portal.")
	
	if QuestIsComplete(Player, A_CLEAR_UNDERSTANDING) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Step2_Complete_Gate(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've located the exit to North Freeport.")
	
	if QuestIsComplete(Player, A_CLEAR_UNDERSTANDING) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Step3_Complete_Sewer(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've located the entrance to the Thieves' Way.")
	
	if QuestIsComplete(Player, A_CLEAR_UNDERSTANDING) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Step4_Complete_Bells(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've taken a look around the dock.")
	
	if QuestIsComplete(Player, A_CLEAR_UNDERSTANDING) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Multiple_Steps_Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I've visited the Portal of Knowledge and have seen the exits from this neighborhood.")
	
	AddQuestStepChat(Quest, 5, "I will find Aldera V'Exxa near Longshadow Alley's dock.", 1, "Now that I have become familiar with Longshadow Alley, I should return to Aldera V'Exxa at the dock.", 0, 1380006)
	AddQuestStepCompleteAction(Quest, 5, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "There are many ways in and out of Longshadow Alley and I am now familiar with them all. Being aware of all that can happen around one is vital to the Teir'Dal.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_Portal(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_Gate(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_Sewer(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4_Complete_Bells(Quest, QuestGiver, Player)
	end
end
