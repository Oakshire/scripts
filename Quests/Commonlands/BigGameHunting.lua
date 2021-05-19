--[[
	Script Name		:	Quests/Commonlands/BigGameHunting.lua
	Script Purpose	:	Handles the quest, "Big Game Hunting"
	Script Author	:	premierio015
	Script Date		:	18.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	J.P. Feterman
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to acquire a fierce carrion hound skull", 1, 100, "J.P. wants to complete his collection. I need to get started collecting the items he asked for.", 101, 330079, 330768)
		AddQuestStepKill(Quest, 2, "I need to acquire a Bloodskull mason's pick", 1, 100, "J.P. wants to complete his collection. I need to get started collecting the items he asked for.", 1668, 330289)
			AddQuestStepKill(Quest, 3, "I need to acquire a plains elephant tusk", 1, 100, "J.P. wants to complete his collection. I need to get started collecting the items he asked for.", 97, 330274, 330767)
       	AddQuestStepKill(Quest, 4, "I need to acquire a rhinoceros horn", 1, 100, "J.P. wants to complete his collection. I need to get started collecting the items he asked for.", 102, 330140, 330760, 330273)
	AddQuestStepKill(Quest, 5, "I need to acquire a digger wasp stinger", 1, 100, "J.P. wants to complete his collection. I need to get started collecting the items he asked for.", 112, 330160, 330664)


	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
		AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
			AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
				AddQuestStepCompleteAction(Quest, 5, "Step5Complete")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "... I'll be back.")
	StartConversation(conversation, QuestGiver, Player, "Haven't I, though? Haven't I?")
end



function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have a fierce carrion hound skull for J.P. at the Crossroads.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have a Bloodskull pick for J.P. at the Crossroads.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have an elephant tusk for J.P. at the Crossroads.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have a rhinoceros horn for J.P. Feterman at the Crossroads.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have a digger wasp stinger for J.P. Feterman at the Crossroads.")
   CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 419, 1) and QuestStepIsComplete(Player, 419, 2) and QuestStepIsComplete(Player, 419, 3) and QuestStepIsComplete(Player, 419, 4) and QuestStepIsComplete(Player, 419, 5) then
    UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered the skull, pick, tusk, horn and stinger for J.P. at the Crossroads.")
	AddQuestStepChat(Quest, 6, "I should return these items to J.P. Feterman", 1, "I have gathered all of the components J.P. Feterman asked for.", 11, 330261)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
    end
end 

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I gave J.P. Feterman the items he asked for.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to J.P. Feterman at the Crossroads.")

	UpdateQuestDescription(Quest, "I gave the skull, pick, tusk, horn, and stinger to J.P. Feterman at the Crossroads.")
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
