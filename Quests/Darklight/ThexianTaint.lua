--[[
	Script Name		:	Quests/Darklight/ThexianTaint.lua
	Script Purpose	:	Handles the quest, "Thexian Taint"
	Script Author	:	Cynnar
	Script Date		:	8/17/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Sselnyl Do'Zyth
	Preceded by		:	No Undead Goes Unturned
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill seven untamed spirits.", 7, 100, "Sselnyl Do'Zyth wants me to kill the spirits near the Wellspring of Nightmares and then stop the Thexian ritual.", 611, 340015)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain the spirits.")

	AddQuestStepLocation(Quest, 2, "Toss the vex-runed remains into the Wellspring of Nightmares.", 1, "Sselnyl Do'Zyth wants me to kill the spirits near the Wellspring of Nightmares and then stop the Thexian ritual.", 11, 340748)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have Ginryne X'Treval's head.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the Thexian responsible for rousing the untamed spirits.")

	--AddQuestStepChat(Quest, 3, "I need to bring Ginryne X'Treval's head to Ginwyss D'Arkenett at T'Vatar Post.", 1, "I need to bring the head to Ginwyss D'Arkenette.", 11, 340064)
	AddQuestStepChat(Quest, 3, "I need to bring news of my success to Ginwyss D'Arkenett at T'Vatar Outpost.", 1, "I need to bring the head to Ginwyss D'Arkenette.", 11, 340064)

	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I took out the Thexian responsible for the untamed spirits and brought his head to Ginwyss D'Arkenett.")
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

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl_revamp/sselnyl016.mp3", "", "", 2505986128, 2745231406, Player)
	AddConversationOption(conversation, "For Neriak!")
	StartConversation(conversation, QuestGiver, Player, "You were chosen for this task for a reason, " ..GetName(Player).. ". Do not fail us. All of Neriak depends upon your success.")
	SummonItem(Player, 14387, 1)
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end