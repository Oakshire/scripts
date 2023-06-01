--[[
    Script Name    : Quests/Antonica/fur_lined_gloves.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.12 04:05:19
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: Patch of Dog Fur
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I'm going to need a larger patch of fur. I should see if I can get some from the gnolls in Antonica.", 10, 80, "I need to work hard to create a nice pair of gloves.", 1094, 120013,120015,120123,120184, 120203	,120212	,120251	,	120252	,120290	,120291,120295	,	120296	,120300	,120304	,120310,120340	,120355,	120361	,120362,	120363	,	120364	,120376	,120378	,120379, 120380, 120395,120397	,120407,120420,	120424, 120425, 120426, 120427, 120429,120430, 120437, 120441, 120804,	120416, 120419, 120858,	121488, 121833, 121845	)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found a larger patch of fur.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found a larger patch of fur.")

    AddQuestStep(Quest,2," I should check both this patch of fur and the small one together.",1, 100,"I need to work hard to create a nice pair of gloves.", 127)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have compared the furs.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have compared the furs.")

	AddQuestStep(Quest, 3, "I'm going to need some down feathers to stuff the gloves with. I should check the hay bales near the griffin towers.", 1, 100,"I need to work hard to create a nice pair of gloves.", 11)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found some down griffon feathers I need for the gloves.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have found some down griffon feathers I need for the gloves.")

    AddQuestStep(Quest,4,"I should stuff the gloves with feathers.",1, 100,"I need to work hard to create a nice pair of gloves.", 127)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end



function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have stuffed the down filled gloves.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have stuffed the down filled gloves. I need something to close up the seams.")

	AddQuestStepKill(Quest, 5, "I need to sew the lining shut. I should gather some tendons from a Caltorsis knight to use as string.", 2, 70, "I need to work hard to create a nice pair of gloves.", 382, 120126)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have collected the sinew to make these gloves.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I have collected the sinew needed to close the lining on these gloves.")
	
    AddQuestStep(Quest,6," I should examine the fur again to sew them together.",1, 100,"I need to work hard to create a nice pair of gloves.", 127)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I have closed the seams in the gloves!")
	UpdateQuestTaskGroupDescription(Quest, 6, "I've been able to create a nice set of fur lined gloves.")

	UpdateQuestDescription(Quest, "I've been able to make a nice set of gloves for my hands. And they're fur lined, too!")
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
