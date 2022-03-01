--[[
	Script Name		:	Quests/TheCommonlands/the_secret_valley.lua
	Script Purpose	:	Handles the quest, "The Secret Valley"
	Script Author	:	premierio015
	Script Date		:	25.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	wwanted poster in Crossroads
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Merchant Marcus in The Commonlands.", 1, "I should find and speak with Merchant Marcus in The Commonlands to find out what this poster is all about.", 11, 330331)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	CheckProgress(Quest, QuestGiver, Player)
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Merchant Marcus and have been given a list of ingredients to gather for the potion.")
	UpdateQuestTaskGroupDescription(Quest, 1, "It seems that a group of evil Antonican magi have taken refuge in a nearby valley that has been blocked off by a landslide.  In order to reach it I will need an Earthwalking Potion from Merchant Marcus.  He has given me a list of ingredients to gather for the potion, it looks like they will be easy enough to get.")

	AddQuestStepHarvest(Quest, 2, "I need to gather 5 black tea leaves.", 5, 100, "In order to access the valley where the Antonican magi have taken refuge I will need to acquire a potion of Earthwalking from Merchant Marcus.  He has given me a list of ingredients he needs me to gather and although they do not seem to have anything to do with magic potions to me, I will gather them and see what comes.", 338,  4310)
		AddQuestStepHarvest(Quest, 3, "I need to gather 5 antonican coffee beans.", 5, 100, "In order to access the valley where the Antonican magi have taken refuge I will need to acquire a potion of Earthwalking from Merchant Marcus.  He has given me a list of ingredients he needs me to gather and although they do not seem to have anything to do with magic potions to me, I will gather them and see what comes.", 2321, 3899)
			AddQuestStepHarvest(Quest, 4, "I need to gather 5 murdunk oranges.", 5, 100, "In order to access the valley where the Antonican magi have taken refuge I will need to acquire a potion of Earthwalking from Merchant Marcus.  He has given me a list of ingredients he needs me to gather and although they do not seem to have anything to do with magic potions to me, I will gather them and see what comes.", 791, 9927)


	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
		AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have gathered 5 black tea leaves.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have gathered 5 antonican coffee beans.")
   CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have gathered 5 murdunk oranges.")
    CheckProgress(Quest, QuestGiver, Player)
end


function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5234, 1) and QuestStepIsComplete(Player, 5234, 2) and  QuestStepIsComplete(Player, 5234, 3) and  QuestStepIsComplete(Player, 5234, 4) then
    	AddQuestStepChat(Quest, 5, "I should give these ingredients to Merchant Marcus in The Commonlands.", 1, "I should give these &quot;ingredients&quot; to Merchant Marcus so that I can enter this valley he has told me of.", 11, 330331)
	    AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
	    UpdateQuestTaskGroupDescription(Quest, 2, "Now that I have gathered the &quot;ingredients&quot; for the &quot;magic potion&quot; I should return to Merchant Marcus and see what happens.")
end	 
   end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I have given Merchant Marcus the ingredients.")
	UpdateQuestTaskGroupDescription(Quest, 3, "Despite my doubts Merchant Marcus has indeed given me a potion of some sort.  I should take a closer look to see if this is really a Potion of Earthwalking as he said.")

	UpdateQuestDescription(Quest, "Now that I have the Potion of Earthwalking I should be able to enter the Valley of the Rogue Magi.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end

