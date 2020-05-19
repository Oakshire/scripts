--[[
	Script Name		:	Quests/FrostfangSea/green_mystery.lua
	Script Purpose	:	the quest "Green Mystery"
	Script Author	:	theFoof
	Script Date		:	2013.6.14
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Hillfred Kinloch
	Preceded by		:	Skulls for the Taking
	Followed by		:	Fewer Orcs to Worry About
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(12,25), 0, 0)
	AddQuestStep(Quest, 1, "Throw some of the ice upon flames within the Demon's Delve tunnels.", 6, 100, "Hillfred has been holding on to some green ice that was found embedded within The Great Shelf. She is convinced it contains the deadly Green Mist.", 2521)
	AddQuestStepCompleteAction(Quest, 1, "UsedIce")
end

function Accepted(Quest, QuestGiver, Player)
	if not HasItem(Player, 7928) then
		SummonItem(Player, 7928, 1)
	end
end

function Deleted(Quest, QuestGiver, Player)
	if HasItem(Player, 7928) then
		RemoveItem(Player, 7928)
	end
end

function Declined(Quest, QuestGiver, Player)
end

function UsedIce(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "The green ice worked!")
	UpdateQuestTaskGroupDescription(Quest, 1, "The green ice worked! It killed any Ry'Gorr orc that breathed the billowing cloud of fumes.")
	AddQuestStepChat(Quest, 2, "Return to Hillfred Kinloch and tell her how the green ice killed any Ry'Gorr orc that breathed the billowing cloud of fumes.", 1, "You should return to Hillfred Kinloch, at Cragged Spine, and tell her how the green ice worked!", 0, 4700115)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		UsedIce(Quest, QuestGiver, Player)
	end
end