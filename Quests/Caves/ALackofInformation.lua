--[[
	Script Name		:	ALackofInformation.lua
	Script Purpose	:	Handles the quest, "A Lack of Information"
	Script Author	:	Shatou
	Script Date		:	1/4/2020
	Script Notes	:	

	Zone			:	Caves
	Quest Giver		:	Consul Bree
	Preceded by		:	None
	Followed by		:	Hit Them Where it Hurts; An Explosive Idea

               ***NEED TO ADD BOOK TO TENT FOR 1ST STEP***
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to search the Dustpaw gnoll camp for their orders. I should be able to find the camp somewhere through the tunnel to the west of Consul Bree.", 1, 100, "Consul Bree has asked that I help her in obtaining a recent version of the Rockpaw gnoll battle orders.", 2693, 1970017)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found the written orders of the Dustpaw gnolls in their camp.")
	
	
	AddQuestStepObtainItem(Quest, 2, "I need to read the book I found in the Dustpaw camp.", 1, 100, "Consul Bree has asked that I help her in obtaining a recent version of the Rockpaw gnoll battle orders.", 11, 1256)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have attempted to read the book in the Dustpaw camp.")

	AddQuestStepKill(Quest, 3, "I need to retrieve the key to the Rockpaw cipher. Any gnoll in the Caves may have one.", 1, 100, "Consul Bree has asked that I help her in obtaining a recent version of the Rockpaw gnoll battle orders.", 185, 1970017, 1970016, 1970018, 1970019, 1970020, 1970021, 1970027, 1970028, 1970029, 1970034)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found the key to the cipher.")

	AddQuestStepChat(Quest, 4, "I need to bring this information to Consul Bree.", 1, "Consul Bree has asked that I help her in obtaining a recent version of the Rockpaw gnoll battle orders.", 11, 1970004)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Consul Bree.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have obtained the battle orders for Consul Bree.")

	UpdateQuestDescription(Quest, "I have found the book for Consul Bree.")
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

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end