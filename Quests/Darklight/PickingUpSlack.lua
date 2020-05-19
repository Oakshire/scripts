--[[
	Script Name		:	Quests/Darklight/PickingUpSlack.lua
	Script Purpose	:	Handles the quest, "Picking Up Slack"
	Script Author	:	Cynnar
	Script Date		:	8/30/2015
	Script Notes	:	Quest ID 139

	Zone			:	Darklight Wood
	Quest Giver		:	Ginwyss D'Arkenett
	Preceded by		:	Rotting Scum ID 138
	Followed by		:	A Guard Insignia?
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Collect armor scraps from moldering soldiers", 5, 100, "Ginwyss D'Arkenett wants me to collect scraps of armor from the moldering soldiers found north of T'Vatar Outpost.", 734, 11996)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I collected several scraps of armor")

	AddQuestStepChat(Quest, 2, "I need to return to Ginwyss", 1, "Ginwyss D'Arkenett wants me to collect scraps of armor from the moldering soldiers found north of T'Vatar Outpost.", 11, 340064)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have spoken with Ginwyss")
	while HasItem(Player, 11996, 1) do
		RemoveItem(Player, 11996)
	end
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)

	PlayFlavor(QuestGiver, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Player)
	Say(QuestGiver, "Once you have collected enough scrap pieces, return them to me.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end