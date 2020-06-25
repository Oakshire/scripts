--[[
	Script Name		:	Quests/FrostfangSea/roughing_up_the_reinforcements.lua
	Script Purpose	:	for the quest Roughing Up the Reinforcements
	Script Author	:	theFoof
	Script Date		:	2013.6.10
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Thirin Veliumdelver
	Preceded by		:	Nothing to Waste
	Followed by		:	Through Thine Eyes
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(12,24), 0, 0)
	AddQuestStepKill(Quest, 1, "I must slay four Ry'Gorr grenadiers.", 4, 100, "I must travel to the Jagged Daggers Isle and engage the Ry'Gorr orcs. While there I should also destroy as many weapon supplies as I can find.", 2488, 4700120, 4700543)
	AddQuestStepKill(Quest, 2, "I must slay four Ry'Gorr infiltrators.", 4, 100, "I must travel to the Jagged Daggers Isle and engage the Ry'Gorr orcs. While there I should also destroy as many weapon supplies as I can find.", 2488, 4700119, 4700538)
	AddQuestStep(Quest, 3, "I must destroy four of the Ry'Gorr orcs' weapon supplies.", 4, 100, "I must travel to the Jagged Daggers Isle and engage the Ry'Gorr orcs. While there I should also destroy as many weapon supplies as I can find.", 287)
    AddQuestStepCompleteAction(Quest, 1, "KilledGrenadiers")
	AddQuestStepCompleteAction(Quest, 2, "KilledInfiltrators")
	AddQuestStepCompleteAction(Quest, 3, "DestroyedSpears")
end

function Accepted(Quest, QuestGiver, Player)
	local thirin = GetSpawnByLocationID(GetZone(QuestGiver), 14520)
	FaceTarget(thirin, Player)
	conversation = CreateConversation()

	PlayFlavor(thirin, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver012.mp3", "", "", 830312044, 2813539587, Player)
	AddConversationOption(conversation, "And you, Thirin.")
	StartConversation(conversation, thirin, Player, "Good.  Brell be with you on your quest, adventurer.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function KilledGrenadiers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain four Ry'Gorr grenadiers.")
	CheckProgress(Quest, QuestGiver, Player)
end

function KilledInfiltrators(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have slain four Ry'Gorr infiltrators.")
	CheckProgress(Quest, QuestGiver, Player)
end

function DestroyedSpears(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have destroyed the Ry'Gorr orcs' weapon supplies.")
	CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, 57, 1) and QuestStepIsComplete(Player, 57, 2) and QuestStepIsComplete(Player, 57, 3) then
		AddStep4(Quest, QuestGiver, Player)
	end
end

function AddStep4(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "With so many Ry'Gorr weapons and orcs destroyed, re-enforcement will be hard.")
	AddQuestStepKill(Quest, 4, "Thirin requested that I slay a war shaman as well, to prevent their scrying magics.", 1, 100, "I should slay a Ry'Gorr war shaman so the Ry'Gorr will be unable to scry Thirin's encampment.", 2488, 4700542, 4700121)
	AddQuestStepCompleteAction(Quest, 4, "KilledShaman")
end

function KilledShaman(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "The Ry'Gorr war shaman, now slain, may have something useful on them.")
	AddQuestStepObtainItem(Quest, 5, "I should see what the Ry'Gorr war shaman has. There may be something of use.", 1, 100, "I should slay a Ry'Gorr war shaman so the Ry'Gorr will be unable to scry Thirin's encampment.", 83, 11820)
	AddQuestStepCompleteAction(Quest, 5, "GotEye")
end

function GotEye(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "It appears to the war shaman has some sort of Orcish scrying eye. I should show this to Thirin Veliumdelver at the Cragged Spine.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I found an odd Orcish scrying eye. Thirin would be interested in this.")
    AddQuestStepChat(Quest, 6, "I must speak with Thirin Veliumdelver.", 1, "I should return to Thirin Veliumdelver, with the Orcish scrying eye, at the Cragged Spine.", 0, 4700112)
	AddQuestStepCompleteAction(Quest, 6, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if QuestStepIsComplete(Player, 57, 1) and GetQuestStep(Player, 57) < 4 then
		KilledGrenadiers(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, 57, 2) and GetQuestStep(Player, 57) < 4 then
		KilledInfiltrators(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, 57, 3) and GetQuestStep(Player, 57) < 4 then
		DestroyedSpears(Quest, QuestGiver, Player)
	end
	if GetQuestStep(Player, 57) == 4 then
		AddStep4(Quest, QuestGiver, Player)
	elseif Step == 4 then
		KilledShaman(Quest, QuestGiver, Player)
	elseif Step == 5 then
		GotEye(Quest, QuestGiver, Player)
	end		
end