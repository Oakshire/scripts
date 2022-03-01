--[[
	Script Name		:	SpicyMeatPie.lua
	Script Purpose	:	Handles the quest, "Spicy Meat Pie"
	Script Author	:	geordie0511
	Script Date		:	19.03.2019
	Script Notes	:	

	Zone			:	Antonica
	Quest Giver		:	Matsy Rollingpin
	Preceded by		:	Care Package for Blarton
	Followed by		:	Mail Delivery for Matsy
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to go out and hunt wolves for Matsy's ingredients.", 5, 100, "Matsy has asked me to gather together some ingredients for her new pie.", 297, 120008, 120106, 120180, 120266, 120293, 121188, 121258, 121261, 121321, 121375, 121402)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the wolf meat that Matsy requires.")

	AddQuestStepKill(Quest, 2, "I need to go out and hunt birds for Matsy's ingredients.", 5, 100, "Matsy has asked me to gather together some ingredients for her new pie.", 297, 120011, 120119, 120257, 121191, 121266, 121370, 120064, 121222)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected the bird meat that Matsy requires.")

	AddQuestStepKill(Quest, 3, "I need to go out and hunt bears for Matsy's ingredients.", 5, 100, "Matsy has asked me to gather together some ingredients for her new pie.", 297, 120029, 120064, 121208, 121222, 120011, 120257, 121191, 121266)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected the bear meat that Matsy requires.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered all of the ingredients for Matsy.")

	AddQuestStepChat(Quest, 4, "I need to take these meats back to Matsy.", 1, "I now have all of the ingredients that Matsy needs for her special recipe.", 297, 120280)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "Matsy made an excellent spicy meat pie with the ingredients that I collected for her.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave Matsy the ingredients.")

	UpdateQuestDescription(Quest, "I have gathered the ingredients Matsy needs for her dish.")
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