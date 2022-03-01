--[[
	Script Name		:	outland_brigade_reports.lua
	Script Purpose	:	Handles the quest, "Outland Brigade Reports"
	Script Author	:	premierio015
	Script Date		:	27.06.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Thundering Steppes
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to get Scout Dinardo's report.  He should be watching the undead to the east.", 5, 50, "I need to find the five scouts and get their reports from them.", 185, 2490218, 2490220, 2490229, 2490151, 2490155, 2490083, 2490226, 2560000, 2490298, 2490338, 2490249, 2490137, 2490217, 2490297, 2490084, 2490098, 2490142, 2490078, 2490217, 2490218, 2490136, 2490120, 2490102, 2490123)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
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
	UpdateQuestStepDescription(Quest, 1, "I found all the pieces of Scout Dinardo's report off of the skeleton general's remains.")

	AddQuestStepChat(Quest, 2, "I need to get Scout Kaylinn's report.  She should be to the northwest watching gnolls.", 1, "I need to find the five scouts and get their reports from them.", 75, 2490684)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I received Scout Kaylinn's report.")

	AddQuestStepChat(Quest, 3, "I need to get Scout Deeryen's report.  He should be watching giants to the south west.", 1, "I need to find the five scouts and get their reports from them.", 75, 2490685)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I received Scout Deeryen's report.")

	AddQuestStepChat(Quest, 4, "I need to get Scout Eldyum's report.  He should be to the west watching centaurs.", 1, "I need to find the five scouts and get their reports from them.", 75, 2490686)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I received Scout Eldyum's report.")

	AddQuestStepChat(Quest, 5, "I need to get Scout Cendalya's report.  She should be watching the sea creatures on the west coast.", 1, "I need to find the five scouts and get their reports from them.", 75, 2490687)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I received Scout Cendalya's report.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the five scout reports.")

	AddQuestStepChat(Quest, 6, "I need to return the reports to Captain Sturman at Bridge Keep.", 1, "I need to return the reports to Captain Sturman at Bridge Keep.", 11, 2490194)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I returned the five reports to Captain Sturman.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned the five reports to Captain Sturman.")

	UpdateQuestDescription(Quest, "I was able to recover the five reports and return them to Sturman.  It appears that one of his men, Scout Dinardo, is missing.  I fear the worst concerning his safety. <br> <br>")
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
