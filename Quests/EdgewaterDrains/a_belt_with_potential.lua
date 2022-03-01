--[[
	Script Name		:	a_belt_with_potential.lua
	Script Purpose	:	Handles the quest, "A Belt with Potential"
	Script Author	:	premierio015
	Script Date		:	05.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Edgewater Drains
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I should try to find the whip handle on the Murkwater ratonga.", 1, 10, "I need to find the missing handle for the whip.  If I'm lucky I might be able to find it down in the Edgewater Drains somewhere.  I should probably start with the Murkwater ratonga since I found the whip cord on one of them.", 661, 1560004, 1560012, 1560013, 1560029, 1560027)
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
	UpdateQuestStepDescription(Quest, 1, "I have found the whip handle on the Murkwater ratonga.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found the whip handle.")
	AddQuestStepKill(Quest, 2, "I should find piranha teeth to use as barbs for the whip.", 6, 100, "After looking carefully at the braided length of leather it appears that it used to have barbs.  I should attempt to find replacements.  Perhaps the sharp teeth of some of the fish down in the Edgewater Drains would work.", 137, 1560022, 1560034, 1560087)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found some replacement barbs for the whip.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have found several teeth that seem suitable for replacement barbs within the whip.")

	AddQuestStepKill(Quest, 3, "I should find some suitable weights for the whip.", 4, 10, "The whip seems nearly complete though lacks weight at the end to allow it to really bite into enemies.  I should try to find some suitable weights to give it a little more heft and finally make it a fearsome weapon.  Perhaps the octopi have picked up something I can use.", 1001, 1560020, 1560032)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have found some suitable weights for the whip.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have found replacement weights for the whip.")
    if HasItem(Player,  2857) then
    RemoveItem(Player, 2857)
    end
	UpdateQuestDescription(Quest, "I have found all the pieces I needed to rebuild the Whip of the Furies.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


