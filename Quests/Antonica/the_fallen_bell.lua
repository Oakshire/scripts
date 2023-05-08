--[[
    Script Name    : Quests/Antonica/the_fallen_bell.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.07 06:05:06
    Script Purpose : From the bell in the Tower of Vhalen in Antonica

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to destroy gnolls in Antonica.", 40, 100, "The gnolls, always preying on the helpless and weak, should be eradicated! They constantly pose a threat to the safety of Qeynosians, and I should do my part to keep them in check.", 611, 120013,120015	,120184, 120203	,120212	,120251	,	120252	,120290	,120291,120295	,	120296	,120300	,120304	,120310,120340	,120355,	120361	,120362,	120363	,	120364	,120376	,120378	,120379, 120380, 120395,120397	,120407,120420,	120424, 120425, 120426, 120427, 120429,120430, 120437, 120441, 120804,	120416, 120419, 120858,	121488, 121833, 121845	)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
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

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have destroyed quite a few gnolls in Antonica.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have destroyed a good portion of the gnoll population in Antonica, I hope this helps.")
    SendMessage(Player,"You feel a slight shifting of weight in one of your pockets.")
    if GetClass(Player)>=1 and GetClass(Player)<=10 then
        SummonItem(Player,135400,1)
    elseif GetClass(Player)>=11 and GetClass(Player)<=20 then
        SummonItem(Player,155598,1)
    elseif GetClass(Player)>=21 and GetClass(Player)<=30 then
        SummonItem(Player,191961,1)
    else
        SummonItem(Player,155599,1)
    end
	UpdateQuestDescription(Quest, "I have slain quite a few gnolls, I hope my efforts do not go unnoticed. There are so many of them!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
