--[[
	Script Name	: Quests/FrostfangSea/the_glimmer_orc.lua
	Script Purpose	: the quest The Glimmer Orc
	Script Author	: theFoof
	Script Date	: 2013.5.26

        Zone            : Frostfang Sea
        Quest Giver     : Dolur Axebeard
        Preceded by     : None
        Followed by     : A Murky Miasma of a Mystery
--]]

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard012.mp3", "", "", 2959588390, 53288716, Player)
	AddConversationOption(conversation, "I will be back shortly.")
	AddConversationOption(conversation, "Any orc that ambushes me will be sorry.")
	StartConversation(conversation, QuestGiver, Player, "The snowflurries tend to wander around the icy cliffs just outside our hideaway.  Ye can't miss 'em.  Brell guide ye, " .. GetName(Player) .. ".")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Init(Quest)
    AddQuestStepKill(Quest, 1, "I must collect several glimmer powders from luminous snowflurries.", 8, 90, "I must collect several glimmer powders from luminous snowflurries. The snowflurries tend to wander just outside the cave, at the Great Shelf, or on Pride Overlook.", 3479, 4700064)
	AddQuestStepCompleteAction(Quest, 1, "GotPowder")
    AddQuestRewardCoin(Quest, math.random(23,80), math.random(13,22), 0, 0)
end

function GotPowder(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have collected several glimmer powders.")
	AddQuestStepChat(Quest, 2, "I must speak with Dolur Axebeard.", 1, "I must speak with Dolur Axebeard, who can be found in the cave at the Great Shelf.", 0, 4700078)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    GotPowder(Quest, QuestGiver, Player)
	end
end