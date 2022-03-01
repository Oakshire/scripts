--[[
	Script Name	    : Quests/FrostfangSea/the_absent_effigy.lua
	Script Purpose	: Handles the quest "The Absent Effigy"
	Script Author	: theFoof
	Script Date	: 2013.5.5

    Zone            : Frostfang Sea
    Quest Giver     : Flibbit Quagmarr
    Preceded by     : Little Lost Froglok
    Followed by     : Bartering Crystals
--]]

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_037.mp3", "", "", 727383716, 4227868188, Player)
	AddConversationOption(conversation, "I will look for Splorpy's Effigy of Mithaniel and return to you if I find it.")
	StartConversation(conversation, QuestGiver, Player, "I think it might have been picked up in the eddy of a frigid whirlstorm. I fear it is long gone by now, but if you happen to come across it in your travels, Splorpy and I would be grateful for its return.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(10,80), math.random(6,15), 0, 0)
    AddQuestPrereqQuest(Quest, LostFroglok) -- change quest step to obtain item 'an Effigy of Mithaniel' drop from frigid whirlstorms/ The Deadly Icewind
	AddQuestStepKill(Quest, 1, "I must kill frigid whirlstorms to find Splorpy's Effigy of Mithaniel.", 1, 75, "I should kill frigid whirlstorms around Gwenevyn's Cove to find Splorpy's Effigy of Mithaniel.", 1059, 4700054, 4700069)
	AddQuestStepCompleteAction(Quest, 1, "GotEffigy")
end

function GotEffigy(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found Splorpy's Effigy of Mithaniel.")
	AddQuestStepChat(Quest, 2, "I must speak with Flibbit Quagmarr. Flibbit is staying in Gwenevyn's Cove.", 1, "I should return Splorpy's Effigy of Mithaniel to his father Flibbit Quagmarr in Gwenevyn's Cove.", 0, 4700045)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		GotEffigy(Quest, QuestGiver, Player)
	end
end