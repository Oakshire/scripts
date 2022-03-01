--[[
	Script Name	: Quests/FrostfangSea/a_murky_miasma_of_a_mystery.lua
	Script Purpose	: the quest A Murky Miasma of a Mystery
	Script Author	: theFoof
	Script Date	: 2013.5.26

        Zone            : Frostfang Sea
        Quest Giver     : Dolur Axebeard
        Preceded by     : The Glimmer Orc
        Followed by     : A Scattering of Ashes
--]]

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard020.mp3", "", "", 3770331911, 592699035, Player)
	AddConversationOption(conversation, "I suspect they will have what you need.")
	AddConversationOption(conversation, "Let's hope this isn't a dead end.")
	StartConversation(conversation, QuestGiver, Player, "Ye'll find the miasmas not far from here.  Look to the icy shelf above the battlefield, south of here.  Bring back whatever you can find after taking them out, and hopefully it'll solve the mystery of the Ry'Gorr's invisibility.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Init(Quest)
    AddQuestRewardCoin(Quest, math.random(10,80), math.random(6,15), 0, 0)
    AddQuestStepKill(Quest, 1, "I must collect several deepice crystals from deepice miasmas.", 8, 100, "I must collect several deepice crystals from deepice miasmas. The miasmas tend to wander to the west of Herga's Choke, on the ledge above the battlefield.", 3774, 4700085)
	AddQuestStepCompleteAction(Quest, 1, "GotCrystals")
end

function GotCrystals(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have collected several deepice crystals.")
	AddQuestStepChat(Quest, 2, "I must speak with Dolur Axebeard.", 1, "I must speak with Dolur Axebeard, who can be found in the cave at the Great Shelf.", 0, 4700078)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1  then
	    GotCrystals(Quest, QuestGiver, Player)
	end
end