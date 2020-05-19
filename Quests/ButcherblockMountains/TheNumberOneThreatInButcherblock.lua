--[[
	Script Name		:	Quests/ButcherblockMountains/TheNumberOneThreatInButcherblock.lua
	Script Purpose	:	Handles the quest, "The Number One Threat in Butcherblock"
	Script Author	:	jakejp
	Script Date		:	6/6/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	Trapper Coalbear
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay several slatepaw bears in the area.", 10, 100, "I must reduce the threat of bears in Butcherblock!", 174, 1080259, 1080429, 1080614, 1081152, 1080378, 1080379, 1080380, 1080334)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain several bears in the Butcherblock Mountains.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have successfully reduced the threat of bears in Butcherblock!")

	AddQuestStepChat(Quest, 2, "I should let Coalbear know I've slain several bears.", 1, "I should let Trapper Coalbear know that I've reduced the threat of bears in the region.", 11, 1080139)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I let Coalbear know that I've slain several bears.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Trapper Coalbear was thrilled to hear of my efforts... but he's still concerned about bears.")

	UpdateQuestDescription(Quest, "Trapper Coalbear should be most pleased. I have slain several bears and hopefully reduced their threat significantly.")
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
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Player)
	AddConversationOption(conversation, "Will do!")
	StartConversation(conversation, QuestGiver, Player, "Great! You can get started right away. As I said, I've seen several already. Come see me again when you've significantly reduced the threat of bears in the area!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end