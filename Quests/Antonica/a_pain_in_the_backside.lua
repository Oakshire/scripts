--[[
    Script Name    : Quests/Antonica/a_pain_in_the_backside.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.19 02:05:40
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I should find strong pieces of armor from the Darkpaw soldiers in Antonica.", 5, 100, "I must replace the back section of this armor. I suspect I can find a Gnoll that would have something suitable.", 228, 120212)
	AddQuestStepZoneLoc(Quest, 2, "I should wash the blood from these new pieces of armor, Crater Pond would be a good location.", 27, "I must replace the back section of this armor. I suspect I can find a Gnoll that would have something suitable.", 228, 125.62, -28.07, 472.29,12)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
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
	UpdateQuestStepDescription(Quest, 1, "I have found some sturdy sections of gnoll armor.")
    QuestCheck1(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have cleaned the fresh blood from the armor segments.")
    QuestCheck1(Quest, QuestGiver, Player)
end

function  QuestCheck1(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player,5841,1) and QuestStepIsComplete(Player,5841,2)  then
	UpdateQuestTaskGroupDescription(Quest, 1, "I have acquired a suitable replacement for the missing armor section.")
	AddQuestStep(Quest, 3, "I need to inspect the armor again. I can try to use the gnoll armor to repair the back of it.", 1, 100, "I must replace the back section of this armor. I suspect I can find a Gnoll that would have something suitable.", 11)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest,3 , "The armor resisted the gnoll armor fragments!")
	AddQuestStepKill(Quest, 4, "Take the eye from The Klicnik Queen..", 1, 100, "I have examined the armor. It rejected the gnoll armor segments I tried to attach. It seems arcane forces are at work here. The eye of a Klicnik queen is said to have the ability to enchant some metals, perhaps it can help disenchant this armor so that I can repair it.", 83, 120452)
	AddQuestStep(Quest, 5, "I need to find the arcane devices belonging to the Darkpaw Gnolls in their cave hideout.", 1, 100, "I have examined the armor. It rejected the gnoll armor segments I tried to attach. It seems arcane forces are at work here. The eye of a Klicnik queen is said to have the ability to enchant some metals, perhaps it can help disenchant this armor so that I can repair it.", 887)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "This is much too Dangerous. The Darkpaw gnolls have a hideout in the hills near here, perhaps I can use their arcane devices.")
    QuestCheck2(Quest, QuestGiver, Player)
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have found the Darkpaw Gnoll's arcane device.")
    QuestCheck2(Quest, QuestGiver, Player)
end

function  QuestCheck2(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player,5841,4) and QuestStepIsComplete(Player,5841,5)  then
	UpdateQuestTaskGroupDescription(Quest, 2, "Now that the armor will no longer reject any repairs, I should be able to fix it.")
	AddQuestStep(Quest, 6, "I need to inspect the armor again. I can try disenchanting the armor using these items.", 1, 100, "I must replace the back section of this armor. I suspect I can find a Gnoll that would have something suitable.", 756)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have disenchanted the armor.")
	AddQuestStepKill(Quest, 7, "Kill young kodiak bears in antonica until suitable lining is found.", 1, 100, "It appears that the edges in this armor are much too jagged to attempt to wear. I should find something to make this a bit more comfortable.", 122, 120294)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have found a suitable lining for the Bloodsaber Armor.")
	AddQuestStep(Quest, 8, "I need to inspect the armor again. I can use these bear pelts to make a lining.", 1, 100, "It appears that the edges in this armor are much too jagged to attempt to wear. I should find something to make this a bit more comfortable.", 756)
	AddQuestStepCompleteAction(Quest, 8, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 8, "I have made a suitable lining for the Bloodsaber Armor.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have made a suitable lining for the Bloodsaber armor.")

	UpdateQuestDescription(Quest, "I have managed to restore to the Bloodsaber chestpiece to a usable condition. ")
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
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
        QuestComplete(Quest, QuestGiver, Player)
    end
end
