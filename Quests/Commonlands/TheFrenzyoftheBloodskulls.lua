--[[
	Script Name		:	the_frenzy_of_the_bloodskulls.lua
	Script Purpose	:	Handles the quest, "The Frenzy of the Bloodskulls"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	28.02.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill 7 Bloodskull warriors.", 7, 100, "I need to kill some Bloodskull orcs and collect some samples of the frenzy root.", 611, 330123, 330250)
	AddQuestStepKill(Quest, 2, "I need to kill 3 Bloodskull priests", 3, 100, "I need to kill some Bloodskull orcs and collect some samples of the frenzy root.", 611, 330249)
	AddQuestStepHarvest(Quest, 3, "I need to collect five samples of Bloodskull Frenzy Root", 5, 100, "I need to kill some Bloodskull orcs and collect some samples of the frenzy root.", 197, 4403)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, QuestGiver, Player, "Return to me once this is done, I'll have more work for you.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain 7 Bloodskull warriors.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have slain 3 Bloodskull priests.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected five Bloodskull Frenzy Root samples.")
	CheckProgress(Quest, QuestGiver, Player)
end




function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Rainus.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Rainus Canton.")

	UpdateQuestDescription(Quest, "I have collected the root samples for Rainus. He was appreciative.")
	GiveQuestReward(Quest, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
if QuestStepIsComplete(Player, 402, 1) and QuestStepIsComplete(Player, 402, 2) and QuestStepIsComplete(Player, 402, 3) then
UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the orcs and collected the root samples.")
AddQuestStepChat(Quest, 4, "I need to return to Rainus", 1, "Now that I have done as he asked, I should return to Rainus Canton.", 11, 330246)
AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end
