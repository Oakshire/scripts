--[[
	Script Name		:	Quests/Commonlands/BrokenEquipment.lua
	Script Purpose	:	Handles the quest, "Broken Equipment"
	Script Author	:	premierio015
	Script Date		:	12.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Tecera Valnos
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "I need to collect an essence injector from the houses south of the Ruins of Val'marr", 1, 100, "I need to retrieve an essence injector from the supplies in the houses south of the Ruins of Val'marr.", 2215, 6857)
	AddQuestStep(Quest, 2, "I need to repair the northwestern arcanic sentry", 1, 100, "I need to repair each of the six sentries in the Ruins of Val'marr. I will need to collect an undying essence from the undead of the ruins for each sentry I plan on repairing.", 11)
	AddQuestStep(Quest, 3, "I need to repair the western arcanic sentry", 1, 100, "I need to repair each of the six sentries in the Ruins of Val'marr. I will need to collect an undying essence from the undead of the ruins for each sentry I plan on repairing.", 11)
	AddQuestStep(Quest, 4, "I need to repair the southwestern arcanic sentry", 1, 100, "I need to repair each of the six sentries in the Ruins of Val'marr. I will need to collect an undying essence from the undead of the ruins for each sentry I plan on repairing.", 11)
    AddQuestStep(Quest, 5, "I need to repair the northeastern arcanic sentry", 1, 100, "I need to repair each of the six sentries in the Ruins of Val'marr. I will need to collect an undying essence from the undead of the ruins for each sentry I plan on repairing.", 11)
    AddQuestStep(Quest, 6, "I need to repair the eastern arcanic sentry", 1, 100, "I need to repair each of the six sentries in the Ruins of Val'marr. I will need to collect an undying essence from the undead of the ruins for each sentry I plan on repairing.", 11)
    AddQuestStep(Quest, 7, "I need to repair the southeastern arcanic sentry", 1, 100, "I need to repair each of the six sentries in the Ruins of Val'marr. I will need to collect an undying essence from the undead of the ruins for each sentry I plan on repairing.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4 , "Step4Complete")
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
	
end

function Accepted(Quest, QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "Good. Return to me once they're all repaired.")
end


function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected an essence injector.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have obtained an essence injector.")
     CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have repaired the northwestern arcanic sentry.")
   CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have repaired the western arcanic sentry.")
     CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have repaired the southwestern arcanic sentry.")
     CheckProgress(Quest, QuestGiver, Player)
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have repaired the northeastern arcanic sentry.")
     CheckProgress(Quest, QuestGiver, Player)
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have repaired the eastern arcanic sentry.")
     CheckProgress(Quest, QuestGiver, Player)
end

function Step7Complete(Quest, QuestGiver, Player)
	 UpdateQuestStepDescription(Quest, 7, "I have repaired the southeastern arcanic sentry.")
     CheckProgress(Quest, QuestGiver, Player)
end


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 8, "I have spoken with Tecera.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have spoken with Tecera.")

	UpdateQuestDescription(Quest, "I have repaired and concealed all of the sentries. Tecera was very thankful.")
	GiveQuestReward(Quest, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 415, 1) and QuestStepIsComplete(Player, 415, 2) and QuestStepIsComplete(Player, 415, 3) and QuestStepIsComplete(Player, 415, 4) and QuestStepIsComplete(Player, 415, 5) and QuestStepIsComplete(Player, 415, 6) and QuestStepIsComplete(Player, 415 , 7) then
        	UpdateQuestStepDescription(Quest, 7, "I have repaired the southeastern arcanic sentry.")
	       UpdateQuestTaskGroupDescription(Quest, 2, "I have repaired all the sentries.")
         AddQuestStepChat(Quest, 8, "I need to return to Tecera", 1, "Now that all the sentries are working again I need to return to Tecera.", 11, 330199)
	AddQuestStepCompleteAction(Quest, 8, "QuestComplete")
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
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
