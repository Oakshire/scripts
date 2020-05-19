--[[
	Script Name		:	Quests/FrostfangSea/ham_and_beans.lua
	Script Purpose	:	the quest Ham and Beans
	Script Author	:	theFoof
	Script Date		:	2013.9.2
	Script Notes	:

	Zone			:	Frostfang Sea
	Quest Giver		:	Barker Gordon
	Preceded by		:	None
	Followed by		:	None
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I must collect halasian beans for Barker's meal.", 1, 100, "I must collect halasian beans for Barker. I can find the halasian beans at the shaman hut called Pilgrims' Hearth in southwest New Halas.", 805)
	AddQuestStepCompleteAction(Quest, 1, "GotBeans")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "barker_gordon/halas/new_halas/barker_gordon/barker_gordon_008.mp3", "", "", 3672106737, 3369025535, Player)
	AddConversationOption(conversation, "Okay then, I will return with the ham and beans.")
	StartConversation(conversation, QuestGiver, Player, "Since you'll be up that way, could you also pick me up some halasian beans? They're at the shaman hut called Pilgrims' Hearth in southwest New Halas.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function GotBeans(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the halasian beans for Barker.")
	AddQuestStepKill(Quest, 2, "I must kill Bentor the Mighty for Barker's meal.", 1, 100, "I must kill Bentor the Mighty for Barker. Bentor the Mighty is in the pen next to the mender's workshop, The Stone Hammer, in New Halas.", 611, 4700251)
	AddQuestStepCompleteAction(Quest, 2, "KilledPig")
end

function KilledPig(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "I have killed and collected Bentor the Mighty's meat for Barker.")
	AddQuestStepChat(Quest, 3, "I must speak with Barker Gordon at the Erollis Dock.", 1, "I must return the halasian beans and meat from Bentor to Barker Gordon. Barker is at the Erollis Dock in New Halas.", 0, 4700242)
	AddQuestStepCompleteAction(Quest, 3, "TalkedBarker")
end

function TalkedBarker(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 3, "I have given the ingredients to Barker.")
	AddQuestStep(Quest, 4, "I must try some of Barker's ham and beans.", 1, 100, "Barker has taken the ingredients I collected and prepared his recipe for ham and beans.", 297)
	AddQuestStepCompleteAction(Quest, 4, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		GotBeans(Quest, QuestGiver, Player)
	elseif Step == 2 then
		KilledPig(Quest, QuestGiver, Player)
	elseif Step == 3 then
		TalkedBarker(Quest, QuestGiver, Player)
	end
end