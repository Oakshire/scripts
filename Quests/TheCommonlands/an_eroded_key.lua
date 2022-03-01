--[[
	Script Name		:	Quests/TheCommonlands/an_eroded_key.lua
	Script Purpose	:	Handles the quest, "An Eroded Key"
	Script Author	:	premierio015
	Script Date		:	02.06.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Access Quests
	Quest Giver		:	a fallen blackguard
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill a Bloodskull messenger", 1, 100, "I need to kill the Bloodskull messenger. He was last seen wandering east of the Val Mar ruins.", 75, 330068)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will do my best")
	StartConversation(conversation, QuestGiver, Player, "Kill the Bloodskull messenger and return to me after you have gathered any important information that he was carrying.")
	PlayFlavor(NPC, "fallen_blackguard/commonlands/qst_fallen_blackguard003.mp3", "", "threaten", 1636715716, 3439028602, Spawn)
end



function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I killed a Bloodskull messenger.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed the Bloodskull messenger and discovered a map of different mineral deposits.")

	AddQuestStep(Quest, 2, "I must locate the shimmering mineral deposit in the Commonlands around the Bloodskull Valley", 1, 100, "I am searching for a collection of magical mineral deposits.", 1135)
		AddQuestStep(Quest, 3, "I must locate the plentiful mineral deposit in the Commonlands around the Bloodskull Valley", 1, 100, "I am searching for a collection of magical mineral deposits.", 1122)
	AddQuestStep(Quest, 4, "I must locate the chipped mineral deposit in the Commonlands around the Bloodskull Valley", 1, 100, "I am searching for a collection of magical mineral deposits.", 1136)
	AddQuestStep(Quest, 5, "I must locate the glowing mineral deposit in the Commonlands around the Bloodskull Valley", 1, 100, "I am searching for a collection of magical mineral deposits.", 1132)

	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
		AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected a piece of ore from the shimmering mineral deposit in the Commonlands.")
CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected a piece of ore from the plentiful mineral deposit in the Commonlands.")
CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have collected a piece of ore from the chipped mineral deposit in the Commonlands.")
   CheckProgress(Quest, QuestGiver, Player)
end


function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5251, 2) and QuestStepIsComplete(Player, 5251, 3) and QuestStepIsComplete(Player, 5251, 4) and QuestStepIsComplete(Player, 5251, 5) then
    UpdateQuestTaskGroupDescription(Quest, 2, "I have collected all the necessary ore from the magical mineral deposits and formed a crystallized key.")
	AddQuestStepChat(Quest, 6, "I need to return to the fallen blackguard now. He will be pleased to know I defeated the Bloodskull messenger and discovered what the messenger was looking for.", 1, "I need to return to the fallen blackguard now so that he may know that I retrieved the ore samples.", 1008, 330069)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")    
end
   end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have collected a piece of ore from the glowing mineral deposit in the Commonlands.")
	CheckProgress(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I've spoken to the fallen blackguard and fashioned a key that will allow me access to the Bloodskull excavation site.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have spoken to the fallen blackguard.")

	UpdateQuestDescription(Quest, "I've completed this quest.")
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

