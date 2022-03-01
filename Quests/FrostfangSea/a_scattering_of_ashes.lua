--[[
	Script Name	: Quests/FrostfangSea/a_scattering_of_ashes.lua
	Script Purpose	: the quest A Scattering of Ashes
	Script Author	: theFoof
	Script Date	: 2013.5.27

        Zone            : Frostfang Sea
        Quest Giver     : Dolur Axebeard
        Preceded by     : A Murky Miasma of a Mystery
        Followed by     : Totem Annihilation
--]]

function Init(Quest)
    AddQuestRewardCoin(Quest, math.random(23,99), math.random(6,15), 0, 0)
	AddQuestStep(Quest, 1, "I must scatter the ashes of the fallen coldain at Pride Overlook.", 1, 100, "I must travel to the peak of Pride Overlook, and then scatter the ashes of the fallen coldain. The Overlook is the peak of the outcropping of the icy cliff just north of the Great Shelf.", 569)
	AddQuestStepCompleteAction(Quest, 1, "ScatteredAshes")
end

function Accepted(Quest, QuestGiver, Player)
    if not HasItem(Player, 49022) then
        SummonItem(Player, 49022, 1)
    end
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard028.mp3", "", "", 564515719, 107243017, Player)
	AddConversationOption(conversation, "Thank you.  I'd be happy to help.")
	AddConversationOption(conversation, "Like the Dain?  That's a wild exaggeration, but I appreciate the compliment.")
	AddConversationOption(conversation, "I'd rather see a coldain honor his brethren.")
	StartConversation(conversation, QuestGiver, Player, "I'd be perfectly happy to give this job to one of my brothers, but I'd rather you do it, Tuce.  I trust ye.  Yer capable and ye fight like the Dain himself.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function ScatteredAshes(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have scattered the ashes.")
	AddQuestStepChat(Quest, 2, "I must speak with Dolur Axebeard.", 1, "I must speak with Dolur Axebeard, who can be found in the cave at the Great Shelf.", 0, 4700078)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    ScatteredAshes(Quest, QuestGiver, Player)
	end
end