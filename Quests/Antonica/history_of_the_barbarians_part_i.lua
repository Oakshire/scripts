--[[
    Script Name    : Quests/Antonica/history_of_the_barbarians_part_i.lua
    Script Author  : Ememjr
    Script Date    : 2019.03.28 04:03:19
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
Quest 477
this script is still being worked on
--]]


function Init(Quest)

    -- updated via zone quest 
	AddQuestStepLocation(Quest, 1, "I need to visit Crater Pond.", 10, "I would like to visit the Crater Pond in Antonica.", 11, 160, -24, 441)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	Item = GetTempVariable(Player, "Q477")
	conversation = CreateConversation()
	AddConversationOption(conversation, "Continue Story 1","ContStory1")
	AddConversationOption(conversation, "Close")
	StartDialogConversation(conversation, 2, Item, Player, "Q Our Name Struck Fear .... text needed")
end

function Declined(Quest, QuestGiver, Player)
	Item = GetTempVariable(Player, "Q477")
	CloseItemConversation(Item, Player)
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have seen Crater Pond.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have seen Crater Pond.")

	AddQuestStep(Quest, 2, "I should read the book.", 1, 100, "I should read the book now that I have a new page.", 2180)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have read the book.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have read the book.")

	AddQuestStepLocation(Quest, 3, "I need to visit the Collapsed Everfrost Tunnel.", 10, "I must visit the Collapsed Everfrost Tunnel in Blackburrow.", 11, -95, 0, -95)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have seen the Collapsed Everfrost Tunnel.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have seen the Collapsed Everfrost Tunnel.")

	AddQuestStep(Quest, 4, "I should read the book.", 1, 100, "I should read the book now that I have a new page.", 2180)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have read the book.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have read the book.")

	AddQuestStepLocation(Quest, 5, "I need to visit The Keep of the Gnollslayers.", 10, "I need to visit the Keep of the Gnollslayers in Antonica.", 11, -2104, -43, 438 )
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have seen The Keep of the Gnollslayers.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I have seen the Keep of the Gnollslayers in Antonica.")

	AddQuestStep(Quest, 6, "I should read the book.", 1, 100, "I should read the book now that I have a new page.", 2180)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I have read the book.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I have read the book.")

	UpdateQuestDescription(Quest, "I have visited several sites and pondered their meaning, reading more of this tome along the way.  Soon I shall have enough experience to consider Part Two.")
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