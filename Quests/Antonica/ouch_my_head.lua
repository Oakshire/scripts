--[[
    Script Name    : Quests/Antonica/ouch_my_head.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.04 07:09:41
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must gather pond glider slime.", 1, 30, "I must gather the ingredients needed for a hangover cure.", 158, 120090, 121246)
		AddQuestStepKill(Quest, 2, "I must gather wandering bat fur.", 2, 30, "I must gather the ingredients needed for a hangover cure.", 140, 120210, 121349)
			AddQuestStepKill(Quest, 3, "I must get a fresh egg from a snake.", 1, 30, "I must gather the ingredients needed for a hangover cure.", 2538, 120187, 121327, 120068, 120208, 121226, 121347)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
		AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Sure, I don't see why not.")
	AddConversationOption(conversation, "Not tonight, I have a headache.")
	StartConversation(conversation, QuestGiver, Player, "Great! An' hurry on up, I can't be waiting all day. I mean, it pains me to see Aroof in such a mess. Go on now! ")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have gathered pond glider slime.")

   CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have gathered enough bat fur.")
 CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have gathered a snake egg.")
  CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5353, 1) and QuestStepIsComplete(Player, 5353, 2) and QuestStepIsComplete(Player, 5353, 3) then
    UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered all the ingredients I need for a hangover cure.")
	AddQuestStepChat(Quest, 4, "I must talk to Haddek.", 1, "I need to deliver the hangover cure to Haddek.", 11, 120281)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
	end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Haddek.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have delivered the hangover cure to Haddek.")

	UpdateQuestDescription(Quest, "I have gathered everything needed to make a hangover cure for Haddek.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end

