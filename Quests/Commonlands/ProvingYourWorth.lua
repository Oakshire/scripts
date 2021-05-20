--[[
	Script Name		:	Quests/Commonlands/ProvingYourWorth.lua
	Script Purpose	:	Handles the quest, "Proving Your Worth"
	Script Author	:	premierio015
	Script Date		:	19.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Captain Vertas
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill four dervish heretics", 4, 100, "Captain Vertas has ordered me to kill several Dervs here in the commonlands. I should begin my search to the west.", 611, 330095, 330107)
		AddQuestStepKill(Quest, 2, "I need to kill three dervish outlanders", 3, 100, "Captain Vertas has ordered me to kill several Dervs here in the commonlands. I should begin my search to the west.", 611, 330093, 330101)
        	AddQuestStepKill(Quest, 3, "I need to kill two dervish cutthroats", 2, 100, "Captain Vertas has ordered me to kill several Dervs here in the commonlands. I should begin my search to the west.", 611, 330104, 330092)
	AddQuestStepKill(Quest, 4, "I need to kill one dervish thaumaturge", 1, 100, "Captain Vertas has ordered me to kill several Dervs here in the commonlands. I should begin my search to the west.", 611, 330094, 330106)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
		AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
      	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
      		AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
      		
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yeah, yeah.")
	StartConversation(conversation, QuestGiver, Player, "You had better.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed four dervish heretics.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have killed three dervish outlanders.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have killed two dervish cutthroats.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have killed one dervish thaumaturge.")
	CheckProgress(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I reported to Captain Vertas at the Crossroads.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to Captain Vertas.")

	UpdateQuestDescription(Quest, "I have removed some of the dervish threat in the Commonlands for Captain Vertas.")
	GiveQuestReward(Quest, Player)
end


function CheckProgress(Quest, QuestGiver, Player)
   if QuestStepIsComplete(Player, 443, 1) and QuestStepIsComplete(Player, 443, 2) and  QuestStepIsComplete(Player, 443, 3) and QuestStepIsComplete(Player, 443, 4) then
       UpdateQuestTaskGroupDescription(Quest, 1, "I have done my duty by removing much of the dervish threat to The Commonlands.")
       	AddQuestStepChat(Quest, 5, "I must return to Captain Vertas", 1, "I have done my part in removing the dervish threat and should return to Captain Vertas at the Crossroads to notify him of my doings.", 11, 330178)
       	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end
