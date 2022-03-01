--[[
	Script Name		:	Quests/FrostfangSea/the_gauntlet.lua
	Script Purpose	:	for the quest "The Gauntlet"
	Script Author	:	theFoof
	Script Date		:	2013.5.29
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Dolur Axebeard
	Preceded by		:	Calling Them Back
	Followed by		:	Off to the Ossuary
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(10,80), math.random(6,15), 0, 0)
	AddQuestStep(Quest, 1, "I must smash several piles of Ry'Gorr bones.", 5, 100, "I must smash several piles of Ry'Gorr bones. These piles of bones litter the battlefield at the Great Shelf.", 90)
	AddQuestStepCompleteAction(Quest, 1, "SmashedBones")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard069.mp3", "", "", 269705072, 2630405776, Player)
	AddConversationOption(conversation, "Of course.")
	AddConversationOption(conversation, "I will return post-haste.")
	AddConversationOption(conversation, "Consider them dust.")
	StartConversation(conversation, QuestGiver, Player, "My patience for these shuffling skeletons is running out.  Best we destroy them at the source, and quickly.  Wend your way through the forces of the Ry'Gorr orcs, running the gauntlet, or so to speak.  Then grind these bones into dust.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function SmashedBones(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I attempted to smash the piles of Ry'Gorr bones, but they reformed into skeletons and attacked me!")
	AddQuestStepChat(Quest, 2, "I must speak with Dolur Axebeard.", 1, "I must speak with Dolur Axebeard, who can be found in the cave at the Great Shelf.", 0, 4700078)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		SmashedBones(Quest, QuestGiver, Player)
	end
end