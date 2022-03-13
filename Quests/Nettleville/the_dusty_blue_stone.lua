--[[
	Script Name		:	the_dusty_blue_stone.lua
	Script Purpose	:	Handles the quest, "The Dusty Blue Stone"
	Script Author	:	Dorbin
	Script Date		:	3/11/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Qeynos
	Quest Giver		:	dusty blue stone
	Preceded by		:	Vida Needs a New Broom
	Followed by		:	Restoring Ghoulbane
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find a mineral expert in Qeynos.", 1, "I need to speak to a mineral expert about this dusty blue stone that Vida Sweeps gave me.", 146, 2350019)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Graystone Yard")
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
	UpdateQuestStepDescription(Quest, 1, "I spoke to Gruffin about the stone.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I showed the stone to Gruffin Goldtooth in the Qeynos Province District.")
    UpdateQuestZone(Quest,"The Thundering Steppes")
	AddQuestStepHarvest(Quest, 2, "I need to collect rock samples in the Thundering Steppes.", 40, 80, "I need to collect mineral samples in the Thundering Steppes while Gruffin investigates my blue stone.", 1085, 2490674)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I collected the rock samples from the Steppes.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I collected the Thundering Steppes mineral samples for Gruffin.")
    UpdateQuestZone(Quest,"Graystone Yard")
	AddQuestStepChat(Quest, 3, "I need to deliver the rock samples to Gruffin.", 1, "I need to return these collected rock samples to Gruffin in the Qeynos Province District.", 1085, 2350019)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I delivered the rock samples to Gruffin.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I gave the mineral samples to Gruffin.")
    UpdateQuestZone(Quest,"South Qeynos")
	AddQuestStepChat(Quest, 4, "I should find a mage in Qeynos that knows about enchanted minerals.", 1, "I should find a mage familiar with enchanted minerals and ask him about this stone.", 146, 2310076)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I spoke to Aristide about the stone.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I showed the dusty blue stone to Aristide Calais at the mage tower.")
    UpdateQuestZone(Quest,"The Thundering Steppes")
	AddQuestStepChat(Quest, 5, "I need to deliver the bag of enchanted steel bars to Olden Highguard in Thundermist Village.", 1, "I need to take this bag of enchanted steel bars to Olden out in the Thundermist Village.", 10, 2490161)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I delivered the steel bars to Olden.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I delivered the bag of enchanted steel bars to Olden in Thundermist Village.")
    UpdateQuestZone(Quest,"South Qeynos")
	AddQuestStepChat(Quest, 6, "I should return to Aristide.", 1, "I should return to Aristide in South Qeynos and see what he found about the blue stone.", 146, 2490161)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I spoke to Aristide.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I spoke to Aristide about the blue stone.")
    UpdateQuestZone(Quest,"North Qeynos")
	AddQuestStepChat(Quest, 7, "I should find someone in Qeynos that knows about blessed objects.", 1, "I should find someone in Qeynos that may know something of blessed objects.", 11, 2220154)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I spoke to Toranim about the stone.")
	UpdateQuestTaskGroupDescription(Quest, 7, "I spoke to Toranim at the Temple of Life about my blue stone.")
    UpdateQuestZone(Quest,"Stormhold")
	AddQuestStepKill(Quest, 8, "I need to slay powerful undead in Stormhold.", 30, 100, "I should follow Toranim's advice and slay a number of the more powerful ghouls in Stormhold.", 91, 150012, 150080,150066,150086,150013, 150085,150020,150021,150246,150246,150254,150077,150244,150017,150016,150022,150114,150035,150039,150057,150272,150035.150245)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I destroyed a number of undead in Stormhold.")
	UpdateQuestTaskGroupDescription(Quest, 8, "After slaying a number of powerful ghouls in Stormhold my blue stone began to grow brighter and feel warmer.")
    UpdateQuestZone(Quest,"North Qeynos")
	AddQuestStepChat(Quest, 9, "I should speak to Toranim in Qeynos.", 1, "I should return to Toranim and let him know the stone feels warmer and is beginning to glow.", 146, 2220154)
	AddQuestStepCompleteAction(Quest, 9, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 9, "I showed the glowing stone to Toranim.")
	UpdateQuestTaskGroupDescription(Quest, 9, "I spoke to Toranim about the blue stone feeling more powerful.")

	UpdateQuestDescription(Quest, "After asking a few different people to look at the stone it turns out it is the adornment of an ancient undead slaying sword called Ghoulbane.")
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
		Step8Complete(Quest, QuestGiver, Player)
	elseif Step == 9 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
