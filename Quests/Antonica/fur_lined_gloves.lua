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
	AddQuestStepKill(Quest, 1, "I'm going to need a larger patch of fur. I should see if I can get some from the gnolls in Antonica.", 10, 80, "I need to work hard to create a nice pair of gloves.", 1094, 120013,120015	,120184, 120203	,120212	,120251	,	120252	,120290	,120291,120295	,	120296	,120300	,120304	,120310,120340	,120355,	120361	,120362,	120363	,	120364	,120376	,120378	,120379, 120380, 120395,120397	,120407,120420,	120424, 120425, 120426, 120427, 120429,120430, 120437, 120441, 120804,	120416, 120419, 120858,	121488, 121833, 121845	)
	AddQuestStep(Quest, 2, "I'm going to need some down feathers to stuff the gloves with. I should check the hay bales near the griffin towers.", 1, 100,"I need to work hard to create a nice pair of gloves.", 11)
	AddQuestStepKill(Quest, 3, "I need to sew the lining shut. I should gather some tendons from a Caltorsis knight to use as string.", 2, 70, "I need to work hard to create a nice pair of gloves.", 382, 120126)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've been able to gather a larger patch of fur from the gnolls.")

 QuestCheck(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've been able to find some griffin down.")

 QuestCheck(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've been able to gather a perfect sized tendon for the sewing string.")
 QuestCheck(Quest, QuestGiver, Player)
end

function  QuestCheck(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player,5815,1) and QuestStepIsComplete(Player,5815,2) and QuestStepIsComplete(Player,5815,3) then
    UpdateQuestTaskGroupDescription(Quest, 1, "I've been able to create a nice set of fur lined gloves.")
    QuestComplete(Quest, QuestGiver, Player)
	end
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I've been able to make a nice set of gloves for my hands. And they're fur lined, too!")
	GiveQuestReward(Quest, Player)
		if HasItem(Player, 7078) then
	RemoveItem(Player, 7078)
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

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end
