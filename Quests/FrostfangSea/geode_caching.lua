--[[
	Script Name		:	SpawnScripts/FrostfangSea/geode_caching.lua
	Script Purpose	:	the quest Geode Caching
	Script Author	:	theFoof
	Script Date		:	2013.6.15
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:   Hillfred Kinloch
	Preceded by		:	Fewer Orcs to Worry About
	Followed by		:	None
--]]

function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(52,99), 0, 0)
	AddQuestStep(Quest, 1, "Search the Velinoid Catacombs in hopes of attaining rare cerise velium crystals.", 6, 100, "Hillfred's interest was piqued by the Velinoid Catacombs you found within the caves below Erollis. She believes a place like that could house the rare cerise velium crystal.", 3776)
	AddQuestStepCompleteAction(Quest, 1, "GotCrystals")
end

function Accepted(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function GotCrystals(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "You found quite a few of the rare cerise velium crystals.")
	AddQuestStepChat(Quest, 2, "Return to Hillfred Kinloch now that you have found quite a few of the rare cerise velium crystals.", 1, "You presented Hillfred with all of the rare cerise velium crystals you found.", 0, 4700115)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		GotCrystals(Quest, QuestGiver, Player)
	end
end